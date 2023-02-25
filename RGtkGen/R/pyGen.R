# Generates the code for RGtk from defs files
# Originally written by Duncan Lang, essentially rewritten by Michael Lawrence
# Has reached state of significant complexity (ugly code that makes pretty code)

### TODO: formalize the API definition database (S4) and use visitor
### patterns to generate the code, etc. Might use simple functions as
### slot accessors, to avoid overhead.

# A lot of the variables used here are defined in globals.R

#####################################
# Defs parsing and processing
#####################################

parseDefs <-
  # calls the pygtk parser directly and returns the raw parse result

function(fileName = "gtk.defs")
{
 x <- try(importPythonModule("sys"))

 if(inherits(x, "try-error")) {
  stop("Cannot find the Python module defsparser or potentially one of the modules on which it depends.\n Set the PYTHONPATH environment variable appropriately and try again.")
 }

 fileName <- path.expand(fileName)

 p <- .PythonNew("DefsParser", fileName, .module="defsparser")
 p$startParsing()

 return(p)
}

## converts the raw python parser object to an R data structure for
## code generation

getDefs <-
function(fileNames = c("/usr/share/pygtk/2.0/defs/gtk.defs"))
{
  raw <- parseDefs(fileNames)
  defs = list()

  # Converters

  ## Mappings from DEFS to GI typelib:
  ## all types:
  ##   name -> name
  ##   c_name -> symbol (functions), typeName (types)
  ##   typecode -> type_init()
  ##   module -> namespace
  ##   since -> namespace version, could merge multiple gir, but too vague
  ## objects:
  ##   parent -> parent
  ##   fields -> fields (but list of S4, not character vector)
  ## enums:
  ##   values -> values (list of S4, not numeric) 
  ##   names -> in values
  ##   nick names -> figure out from names?
  ## boxed:
  ##   fields -> fields (like in objects)
  ## parameters:
  ##   name -> name
  ##   type -> type
  ##   access -> direction
  ##   nullok -> mayBeNull
  ##   dflt -> ***FIXME*** http://bugzilla.gnome.org/show_bug.cgi?id=558620
  ## calls:
  ##   return -> returnType
  ##   owns -> callerOwnsReturn
  ##   deprecated -> deprecated
  ##   varargs -> currently filtered from the typelib
  ## method:
  ##   ofobject -> isMethod (and then first argument type)
  ## function:
  ##   constructorof -> isConstructor (and then returnType)
  ## virtual:
  ##   ofobject -> first argument type
  
  parseType <- function(type)
  {
      gsub("-([^>])", " \\1", type)
  }
  convertDef <- function(def) {
      name <- def[["c_name"]]
      if (!length(name))
        name <- def[["name"]]
      list(name=name)
  }
  convertType <- function(type) {
    c(convertDef(type), typecode=type[["typecode"]], module=type[["module"]],
      since = list(package_version(type[["since"]])))
  }
  convertFields <- function(fields) {
      f <- NULL
      if(length(fields) > 0) {
          f <- sapply(fields, function(x) parseType(x[1]))
          names(f) <- sapply(fields, function(x) x[2])
      }
      list(f)
  }
  convertObject <- function(object) {
      o <- c(convertType(object), parent=object[["parent"]],
        fields = convertFields(object[["fields"]]))
      class(o) <- "ObjectDef"
      o
  }
  convertInterface <- function(interface) {
      i <- convertType(interface)
      class(i) <- "InterfaceDef"
      i
  }
  convertEnum <- function(enum) {
      values <- enum[["values"]]
      c_names <- as.character(sapply(values, function(x) x[[2]]))
      local_names <- as.character(sapply(values, function(x) x[[1]]))
	  if (length(values[[1]]) > 2)  # use values if avail
		  vals <- as.numeric(sapply(values, function(x) x[[3]]))
      else {
		  if(enum[["deftype"]] == "enum")
			  vals <- 0:(length(values)-1)
		  else vals <- 2^(0:(length(values)-1))
	  }
	  if (enum[["deftype"]] == "enum")
		  klass <- "EnumDef"
	  else klass <- "FlagDef"
      names(vals) <- local_names
      names(c_names) <- local_names
      e <- c(convertType(enum), names=list(c_names), values = list(vals))
      class(e) <- klass
      e
  }
  convertBoxed <- function(boxed) {
      b <- c(convertType(boxed), copy=boxed[["copy"]], release=boxed[["release"]],
        fields = convertFields(boxed[["fields"]]))
      class(b) <- "BoxedDef"
      b
  }
  convertParameter <- function(param) {
      list(name=param[["pname"]], access=param[["paccess"]], type=parseType(param[["ptype"]]),
        dflt=param[["pdflt"]], nullok=param[["pnull"]])
  }
  convertProperty <- function(prop) {
      nullok <- 0
      if (!is.null(prop[["optional"]]))
          nullok <- 1
      name <- prop[["argname"]]
      if (is.null(name))
          name <- prop[["pname"]]
      list(name=name, pname=prop[["pname"]], nullok=nullok)
  }
  convertCall <- function(call) {
      params <- call[["params"]]
      if (length(params) > 0 && is.null(params[[1]][["ptype"]]))
          convP <- convertProperty
      else convP <- convertParameter
      c <- c(convertType(call), return = parseType(call[["ret"]]), owns = call[["caller_owns_return"]],
        parameters = list(lapply(params, convP)), varargs = call[["varargs"]], deprecated = call[["deprecated"]])
      if (!is.null(c$parameters))
          names(c$parameters) <- getNames(c$parameters)
      c
  }
  convertFunction <- function(func) {
      if (!is.null(func[["of_object"]])) {
          f <- c(convertCall(func), ofobject = func[["of_object"]],
            module = modules[func[["of_object"]]])
          class(f) <- "MethodDef"
      } else {
          f <- c(convertCall(func), constructorof = func[["is_constructor_of"]])
          class(f) <- "FunctionDef"
      }
      f
  }
  convertVirtual <- function(virtual) {
    f <- c(convertCall(virtual), ofobject = virtual[["of_object"]],
      module = modules[virtual[["of_object"]]])
    f$vname <- f$name
    f$name <-  paste(collapseClassName(f$ofobject), "_", f$name, sep="")
    class(f) <- "VirtualDef"
    f
  }
  convertPointer  <- function(pointer) {
      p <- c(convertType(pointer), fields = convertFields(pointer[["fields"]]))
      class(p) <- "PointerDef"
      p
  }
  getNames <- function(x) {
      sapply(x, function(y) y$name)
  }

    # GObjects
  defs$objects <- lapply(raw[["objects"]], convertObject)
  names(defs$objects) <- getNames(defs$objects)

    # GInterfaces
  defs$interfaces <- lapply(raw[["interfaces"]], convertInterface)
  names(defs$interfaces) <- getNames(defs$interfaces)

    # Enums and Flags

  # convert enums and flags at once, then split them
  rawEnums <- raw[["enums"]]

  enumsAndFlags <- lapply(rawEnums, convertEnum)

  enums <- which(sapply(enumsAndFlags, function(x) class(x)) == "EnumDef")
  flags <- c(1:length(rawEnums))
  if (length(rawEnums) == 0 || length(enums) > 0)
	  flags <- flags[-enums]

  defs$enums <- enumsAndFlags[enums]
  names(defs$enums) <- getNames(defs$enums)
  defs$flags <- enumsAndFlags[flags]
  names(defs$flags) <- getNames(defs$flags)

  # Boxed types

  defs$boxes <- lapply(raw[["boxes"]], convertBoxed)
  names(defs$boxes) <- getNames(defs$boxes)

  # Pointers (not too common)

  defs$pointers <- lapply(raw[["pointers"]], convertPointer)
  names(defs$pointers) <- getNames(defs$pointers)

  # make a vector mapping types to their modules, for resolving methods
  modules <- sapply(c(defs$objects, defs$interfaces, defs$boxes, defs$pointers),
                function(x) { x$module })
                
  # Functions (and Methods) - should these be separated?

  defs$functions <- lapply(raw[["functions"]], convertFunction)
  names(defs$functions) <- getNames(defs$functions)

  # Virtuals
  
  defs$virtuals <- lapply(raw[["virtuals"]], convertVirtual)
  names(defs$virtuals) <- getNames(defs$virtuals)
  
  # User defined functions

  defs$userfunctions <- lapply(raw[["user_functions"]], convertFunction)
  names(defs$userfunctions) <- getNames(defs$userfunctions)
                
  # define mapping between type name and code, could be done at run-time but this is more efficient
  typecodes <- sapply(c(defs$objects, defs$interfaces, defs$boxes, defs$enums, 
    defs$flags, defs$pointers), function(x) { x$typecode })
  
  typecodes <- c(CPrimitiveToGType, typecodes)
  typecodes[["GObject"]] <- "G_TYPE_OBJECT" # not included in defs
  typecodes[["GObjectClass"]] <- "G_TYPE_OBJECT"
  typecodes[["GValue"]] <- "G_TYPE_VALUE"
  typecodes[transparentTypes] <- "R_GTK_TYPE_SEXP"
  defs$typecodes <- typecodes

  defs
}

# Whatever 'from' has that 'into' doesn't is added to 'into'
# This lets us accumulate defs to satisfy dependencies
mergeDefs <-
function(from,  into)
{
    # local function to modify the value of into via lexical scoping.
  mergeEl <- function(category) {
    which <- match(names(from[[category]]), names(into[[category]]))
    into[[category]][names(from[[category]])[is.na(which)]] <<- from[[category]][is.na(which)]

    # this is actually supposed to happen with primitive type codes and stuff
    if(category != "typecodes" && any(!is.na(which)))  {
      warning("Discarding ", category,  " definitions for ",   paste(names(from[[category]][!is.na(which)]), sep=", "))
    }
  }

  for(i in names(from))
    mergeEl(i)

  into
}

###################################
# Class inheritance
###################################

# as I understand it, this is class to class heirarchy
getClassHierarchy <-
function(name, classes)
{
  ans <- name
  tmp <- name
  
  if (!(name %in% names(classes)))
    return(ans) # avoid partial matching
  
  while(!is.null(p <- classes[[tmp]])) {
     tmp <- p$parent
     if(length(tmp) < 1 || tmp == "nil")
       break
     ans <- c(ans, tmp)
  }

  ans
}


inheritsClass <-
  #
  # Determine if the specified class extends the GtkWidget class.
  # Let us do things like 'show' it automatically
  #
function(name, classes, type)
{
  k <- getClassHierarchy(name, classes)
  if(length(k) == 0)
    return(FALSE)

  return(!is.na(match(type, k)))
}

###############################################################################
# Type mapping
###############################################################################

# primitive type mapping functions

# a 'generic' type is supposed to be a description independent of both R and C,
# but it mostly equals its R equivalent
# generic types exist only for primitive types
getGenericType <-
function(x)
{
  if(length(x) > 1)
    x <- x[[1]]
  r <- NULL
  if (isPrimitiveType(x))
      r <- CPrimitiveToGeneric[[x]]
  r
}
# gets the generic type after dereferencing the input type
getGenericTypeRef <-
function(x)
{
    getGenericType(toValidType(deref(x)))
}

getGenericRType <- function(x) {
	t <- getGenericType(x)
    if (is.null(t))
        t <- getGenericTypeRef(x)
    if (is.null(t))
        return(NULL)
    if (t == "string")
        t <- "character"
	t
}

# generates the function used on the R side for coercing a primitive type
getGenericTypeCoerce <- function(x) {
    asCoerce(getGenericRType(x))
}

# converting generic types

# C -> R
getGenericTypeAsR <- function(x) {
    t <- getGenericType(x)
    asR(t)
}
# R -> C
getGenericTypeAs <- function(x) {
    t <- getGenericType(x)
    asC(t)
}

# utility functions for generating conversion function names

asC <- function(t)
{
    paste("asC", asRTypeName(t), sep="")
}
asR <- function(t)
{
    paste("asR", asRTypeName(t), sep="")
}
asCoerce <- function(t)
{
  if (isCairoType(t))
		t <- toCapPhraseName(stripCairoType(t))
  paste("as", t, sep=".")
}

####################
# TYPE MANIPULATION
####################

# removes the 'const' that qualifies a C type
dequalify <- function(type)
{
    sub(" const", "", sub("^const ", "", type))
}
# removes the '[]' that designates an array type in the defs
dearray <- function(type)
{
    sub("\\[.*", "", type)
}
# derefs a type - if the type is an array, it is dearrayed.
deref <-
function(type)
{
    if (length(grep("[^*]\\[", type)) > 0) {
        dearray(type)
    } else sub("\\*","",type)
}
# derefs a variable name (gets the value to which the variable points)
derefName <-
function(name) paste("*", name, sep="")
  

# prepend the extern keyword to a type declaration
extern <-
function(type)
{
	paste("extern", type)
}

# find the base type for non-primitive types
# this just removes qualifiers like 'const' and '*'
# if complete = T then it also removes array qualifier '[]'
baseType <- function(type, complete=F) {
    sapply(type, function(t) {
        t <- dequalify(t)
        if ((!isPrimitiveType(t) && !isPrimitiveTypeRef(t)) || complete) {
            t <- gsub("\\*","", t)
            if (complete)
                t <- dearray(t)
        }
        t
    })
}

# converts a defs type to a valid C type
toValidType <-
function(type) {
    gsub("\\[.*", "*", type)
}
# parses a defs array type to determine its static size, if it exists
arraySize <-
function(type) {
    s <- regexpr("\\[", type)
    e <- regexpr("\\]", type)
    substring(type, s+1, e-1)
}

# get rid of annoying _t postfix of cairo types
stripCairoType <-
function(type) {
	sub("_t$", "", type)
}
# make cairo types mimic the G types in R
asRTypeName <-
function(type) {
	if (isCairoType(type))
		type <- toCapPhraseName(stripCairoType(type))
  changeCapitalization(type, TRUE)
}

########################
# TYPE IDENTIFICATION
########################

isPrimitiveType <-
function(x)
{
  x %in% names(CPrimitiveToGeneric)
}

isPrimitiveTypeRef <-
function(x)
{
    !is.null(getGenericTypeRef(x))
}
# is this type a pointer?
isRef <-
function(type)
{
    refCount(type) > 0
}
# how many times has the type been referenced?
refCount <-
function(type)
{
    count <- nchar(type) - regexpr("\\*",toValidType(type)) + 1
    if (count > nchar(type))
        count <- 0
    count
}
# is the type qualified by 'const'
isConst <-
function(type)
{
    length(grep("^const", type)) > 0
}
# is it an array type? this includes explicit arrays ([]) and primitive pointers
isArray <-
function(type) {
    (!isPrimitiveType(type) && isPrimitiveType(deref(type))) ||  length(grep("\\[",type)) > 0
}

# functions for identifying types as defined by the defs

isUserFunction <-
function(type, defs) {
    type %in% names(defs$userfunctions) | type %in% manUserFuncs
}

isEnum <-
function(type, defs)
{
  type %in% names(defs$enums)
}

isFlag  <-
function(type, defs)
{
  type %in% names(defs$flags)
}

isObject <-
function(type, defs)
{
  type %in% names(defs$objects) | type == "GObject"
}

isInterface <-
function(type, defs)
{
  type %in% names(defs$interfaces)
}

isBoxed <-
function(type, defs)
{
    type %in% names(defs$boxes)
}

# (in the defs)
isPointer <-
function(type, defs)
{
    type %in% names(defs$pointers)
}
# tries to guess if this is a class structure
isClass <-
function(type)
{
    length(grep("Class$",type)) > 0
}
isIface <-
function(type)
{
  length(grep("Iface$",type)) > 0
}

isCairoType <-
function(type)
{
	length(grep("^cairo_", type)) > 0
}

######
# Utilities
######

 # dummy object parameter for method defs
makeObjectParam <- function(type) {
    list(list(name="object", type=paste(type,"*",sep=""), nullok=0, access="in"))
}

# distinguishes an S variable from a C variable
nameToSArg <-
function(name)
{
 paste("s", name, sep="_")
}
# do the defs say this function is deprecated?
isDeprecated <-
function(fun)
{
    !is.null(fun$deprecated)
}

isConstructor <-
function(fun)
{
  !is.null(fun$constructorof)
}
getConstructors <-
function(type, defs)
{
	names(defs$fun)[type == sapply(defs$fun, function(x) x$constructorof)]
}
# gets the first constructor for a type
getConstructor <-
function(type, defs)
{
	getConstructors(type, defs)[1]
}


isMethod <-
function(fun)
{
    inherits(fun, "MethodDef") | inherits(fun, "VirtualDef")
}

isVirtual <-
function(fun)
{
  inherits(fun, "VirtualDef")
}

# do the defs define this constructor as a generic property-based constructor?
# ie, do we have to use g_object_new?
isPropertyConstructor <-
function(fun)
{
    isConstructor(fun) && length(fun$parameters) > 0 && !is.null(fun$parameters[[1]]$pname)
}

changeCapitalization <-
function(x, up=TRUE) {
        els <- substring(x, 1:nchar(x), 1:nchar(x))
        if(up)
           els[1] <- chartr("a-z", "A-Z", els[1])
        else
           els[1] <- chartr("A-Z", "a-z", els[1])

        paste(els, collapse="")
}

mapToClassName <- function(fun) {
    if (isConstructor(fun))
        return(fun$constructorof)
    return(fun$ofobject)
}

toCapPhraseName <-
  # converts a string into collapsed capitalized word format
  # from a _ separated word format.
  # i.e. convert a name in the form word1_word2_word3
  # to word1Word2Word3
  # In other words, this removes the word separator `_'
  # and capitalizes each word, optionally capitalizing
  # the first word also.
  #
  # If classNames is specified, then we try to ensure
  # that the prefix for the name matches a class name
  # from this list and preserves capitalization.
  # This is aimed at fixing the mapping of function names
  # such as gtk_clist_set_column_width which would
  # be mapped to gtkClist... rather than gtkCList...
  #
  # We are doing an extra changeCapitalization() in
  # the case of a matching class name and we want to capitalize
  # No big deal at present. This is already a mess!
function(name, capitalize = FALSE, classNames = NULL)
{
  name <- tolower(name) # so macros look the same as funcs
  
  els <- strsplit(name, "_")[[1]]

  className <- character(0)
  if(!is.null(classNames)) {
    id <- pmatch(tolower(classNames), paste(els, collapse="", sep=""))
    if(any(!is.na(id))) {
      className <- changeCapitalization(classNames[!is.na(id)][1], FALSE)
    }
  }


  els <- sapply(els, changeCapitalization)
  val <- paste(els, collapse="")

  if(length(className)) {
     # want to replace the first nchar(className) characters
     # with the values from className.
    val <- paste(className, substring(val, nchar(className)+1), collapse="",sep="")
  }

  if(capitalize) {
    val <- changeCapitalization(val, FALSE)
  }

  val
}


collapseClassName <-
  #
  # converts a class name of the form GtkButton
  # to gtk_button.
  # Also handles GtkCList to gtk_clist.
  #
function(name)
{
  tmp <- gsub("([ABCDEFGHIJKLMNOPQRSTUVWXYZ]+)", "_\\1", name)
  tmp <- tolower(substring(tmp, 2))
  gsub("_([abcdefghijklmnopqrstuvwxyz])_","_\\1", tmp)
}



computeSubClasses <-
  # Computes the table (named list) of
  # classes  and their sub-classes.

  # Not actually used but a utility function
  # for the package that others might want to use.
function(classes)
{
  kids <- vector("list", length(classes))
  names(kids) <- names(classes)


  sapply(names(classes), function(x) {
                             parent <- classes[[x]]$parent
                             if(!length(parent))
                               parent <- "Orphan Classes"
                             kids[[parent]] <<- c(kids[[parent]], x)

                             T
                          })

  kids
}

#############
# PARAMETER HANDLING
#############

# is this parameter in or out?
isInParam <- function(param)
{
    is.null(param$access) || param$access != 'out'
}

# tries to guess if the parameter describes the length of an array parameter
isArrayLengthParam <- function(param, params)
{
    type <- getGenericType(param$type)
    (!is.null(type) && (type == "integer" || type == "numeric") &&
        !is.null(getArrayParamForSize(param$name, params)))
}

# should this parameter be included in the function header?
# is the type hidden? is it an array length parameter?
isHiddenParam <-
function(param, params)
{
    type <- param$type
    if (is.null(type))
        return(FALSE)
    if (isArrayLengthParam(param, params))
        return(TRUE)
    type %in% hiddenTypes
}

# should this parameter just be ignored?
isIgnoredParam <-
function(param)
{
    !is.null(param$type) && param$type %in% ignoredTypes
}
# tries to find an array parameter that corresponds to a suspected size param
getArrayParamForSize <-
function(name, params)
{
    arrInd <- which(names(params)==name)[[1]]-1
    if (arrInd > 0 && isArrayParamWithSize(params[[arrInd]]))
        return(params[[arrInd]])
    if (arrInd+2 <= length(params) && isArrayParamWithSize(params[[arrInd+2]]))
        return(params[[arrInd+2]])
    return(NULL)
}

isArrayParamWithSize <-
function(param)
{ # great majority of incoming string arrays are NULL terminated, this avoids some confusion
    etype <- toValidType(deref(dequalify(param$type)))
    #if (nchar(arraySize(param$type))) print(param$type)
    isArray(dequalify(param$type)) && 
    (!isPrimitiveType(etype) || getGenericType(etype) != "string") &&
    !nchar(arraySize(param$type))
}
# simply gets the types of defs param definitions
getParamTypes <- function(params) {
    sapply(params, function(param) param$type)
}
# simply gets the names of defs param definitions
getParamNames <- function(params) {
	sapply(params, function(param) param$name)
}

###############################################
# Code Generation
###############################################

#########################
# CODE GENERATION TOOLS
#########################

# declares a parameter
decl <-
function(type, var, size)
{
 decl <- paste(toValidType(type), paste(var, collapse=", "))
 if (!missing(size))
     decl <- paste(decl,"[",size,"]",sep="")
 decl
}
# denote something as static
static <-
function(var)
{
  paste("static", var)
}
# denote something as const
const <-
function(var)
{
  paste("const", var)
}
# makes a C statement (terminated by ';')
statement <- function(x, depth = 1) {
    paste(ind(x, depth = depth), ";", sep="", collapse="\n")
}
# envelopes the argument in quotes (makes it a string literal)
lit <- function(x) {
    paste("\"", x, "\"", sep="")
}
# indents the argument to the given depth
ind <- function(..., depth = 1) {
    paste(paste(rep("  ",depth), collapse=""), c(...), sep="")
}
# casts the value to the given type
cast <- function(type, val) {
    paste("((", type, ")", val, ")", sep="")
}
# initializes an array with the given elements
arrinit <- function(elements, null_terminate = F) {
  if (null_terminate)
    elements <- c(elements, "NULL")
  paste("{", paste(elements, collapse=", "), "}")
}
# initializes a struct with the given elements
structinit <- function(...) {
  elements <- c(...)
  elements[length(elements)] <- paste(elements[length(elements)], "\n", sep="")
  arrinit(paste("\n", ind(elements), sep=""))
}
# declares a function in C
declareFunction <- function(ret, name, ptypes, pnames, prefix = T) {
    if (ret == "none")
        ret <- "void"

    args <- character(0)
    if (length(pnames) > 0) {
      if (prefix)
        pnames <- nameToSArg(pnames)
      args <- paste(toValidType(ptypes), pnames, collapse=", ")
    } else args <- "void"
    if (prefix)
      name <- nameToC(name)
    
    paste(
        ret, "\n",
        name, "(", args, ")",
    sep="")
}

s_signature <- function(formal_args)
{
	cargs <- as.character(formal_args)
	names(cargs) <- names(formal_args)
	args <- sapply(names(formal_args), function(argname) {
		arg <- formal_args[[argname]]
		if (missing(arg))
			""
		else if (is.null(arg))
			"NULL"
		else if (is.character(arg) && nchar(arg) > 0 && arg != "NULL")
			lit(arg)
		else cargs[[argname]] # this is to get around "calls"
	})
	#args <- as.character(formal_args)
	if (length(names(formal_args)) == 0)
		argDecls <- nameToS(cargs)
	else {
		names(args) <- nameToS(names(formal_args))
		argDecls <- sapply(names(args), function(name) {
			if (is.null(args[[name]]))
				args[[name]] <- "NULL"
			if (nchar(as.character(args[[name]])) > 0) # assign defaults if available
				named(name, args[[name]])
			else name
		})
	}
	paste(argDecls, collapse=", ")
}

# declares a function in R
declareRFunction <- function(name, args)
{    
    paste(name, " <-", "\n", 
	"function(", s_signature(args), ")", sep="")
}

# invokes the named function with the given args, as a vector
invoke <- function(name, args) {
    paste(name, "(", paste(args,collapse=", "), ")", sep="")
}
# invokes the named function with args passed as remaining arguments
invokev <- function(name, ...) {
    paste(name, "(", paste(...,sep=", "), ")", sep="")
}
# assigns a value in C
cassign <- function(var, val) {
    paste(var, "=", val)
}
# assigns a value in R
rassign <- function(var, val) {
    paste(var, "<-", val)
}
# creates a named parameter in R
named <- function(name, val)
{
    paste(name, "=", val)
}
# access a field
field <- function(struct, name)
{
  paste(struct, "->", name, sep="")
}
# accesses an index in a vector
vecind <- function(vec, ind) {
  invokev("VECTOR_ELT", vec, ind - 1)
}
# accesses a particular array index
arrind <- function(arr, ind) {
    paste(arr, "[", ind, "]", sep="")
}
listind <- function(arr, ind) {
  paste(arr, "[[", ind, "]]", sep="")
}
# convenience functions for common macros
setvec <- function(vec, ind, val) {
  invokev("SET_VECTOR_ELT", vec, ind - 1, val)
}
pushvec <- function(vec, val) {
  c(invokev("SETCAR", vec, val), cassign(vec, invoke("CDR", vec)))
}
  
setnames <- function(vec, val) {
  invokev("SET_NAMES", vec, val)
}
setclass <- function(obj, val) {
  invokev("SET_CLASS", obj, val)
}
# references a variable
refName <- function(name) {
    if (name != "NULL")
        paste("&",name,sep="")
    else name
}
# increases the reference count of a type
refType <- function(name) {
    paste(name, "*")
}
# allocate zeroed memory on the GLib stack
malloc <- function(type) {
    cast(refType(type), invokev("g_new0", type, 1))
}
# allocate zeroed memory on the R stack
salloc <- function(num, type) {
    cast(refType(type), invokev("S_alloc", num, invoke("sizeof", type)))
}
# allocate non-zeroed memory on R stack
ralloc <- function(num, type) {
    cast(refType(type), invokev("R_alloc", num, invoke("sizeof", type)))
}
# allocate R vector object
alloc <- function(obj, type, length)
{
  invoke("PROTECT", cassign(obj, invokev("allocVector", paste(toupper(type), "SXP", sep=""), length)))
}
# pop one object from the stack
unprotect <- function(count)
{
  invoke("UNPROTECT", count)
}
protect <- function(obj)
{
    invoke("PROTECT", obj)
}
# returns a value from a function
returnValue <- function(name = "_result") {
  if (is.null(name))
    "return"
  else invoke("return", name)
}

# this isn't required anymore but it's sort of conventional
nameToS <-
function(name)
{
  gsub("_", ".", name)
}
# distinguishes the wrapper function from the wrapped function
nameToC <-
function(name)
{
 paste("S", name, sep="_")
}

######
# Functions
######

## R

getDefaultSArgs <-
  #
  # figure out what the default arguments are for each argument
  # of the S function being generated from the function with these
  # parameters.
  #
  # This has become very ugly. Fix this up.
  #

  #### Rewritten to handle new parameter representation
  # It no longer defaults to the first value of an enum, because I fail to see
  # the logic in that. What about the first enum value makes it a sensible "default"?
  # I think it should only add 'default' values (or NULL if 'null-ok')
  # -- Michael
function(params)
{
    x <- lapply(params, function(x) {
		if (!is.null(x$dflt)) {
			if (x$dflt == "TRUE" || x$dflt == "FALSE")
				def <- as.logical(x$dflt)
			else if (length(grep("[A-Za-z]", x$dflt)) == 0)
				def <- as.numeric(x$dflt)
			else def <- x$dflt
		} else if (x$nullok)
          def <- "NULL"
		else return("")
      return(def)
  })

  names(x) <- nameToS(names(params))

  x
}

coerceRValueCode <-
  #
  # This creates R code to coerce or check that an object is of the
  # appropriate type.
  #
  # should we just use an as(name, type) here
  # and defer the computation.
  #
function(param, name, defs)
{
 name <- nameToS(name)
 type <- baseType(param$type)
 fn <- NULL
 var <- name
 args <- var
 # transparent types are coerced using a function of the form 'as.Type'
 if (type %in% transparentTypes && type != "GValue") {
     fn <- asCoerce(type)
 } else if(isPrimitiveType(type)) { # singleton or vector, treat the same
   fn <- getGenericTypeCoerce(type)
 } else if (isPrimitiveTypeRef(type)) { 
	 # this could be factored with the array stuff below, but this is faster
	 # primitive arrays are often large and so require more efficiency
	 # if all converters were vectorized, we could do everything this way
     fn <- "as.list"
     args <- invoke(getGenericTypeCoerce(type), args)
 } else if(isEnum(type, defs) || isFlag(type, defs)) { # enums/flags handled in C
   #if (isCairoType(type))
#	   type <- fixCairoType(type)
#	 fn <- paste("map", type, sep="")
 } else if(isUserFunction(type, defs)) {
   fn <- "as.function"
 #} else if (type == "GString") {
   #fn <- "as.character"
 } else if (isArray(type)) {
     param$type <- deref(type)
     coerceElement <- coerceRValueCode(param, "x", defs)
	 if (nchar(coerceElement) > 0) {
		 fn <- "lapply"
         args <- c(args, paste("function(x) { ", coerceElement, "; x }", sep=""))
     } else fn <- "as.list"
 } else if (type != "gpointer" && type != "GValue") {
     typeName <- asRTypeName(type)
	 args <- c(args, lit(typeName))
     fn <- "checkPtrType"
     var <- NULL
 }

 call <- ""
 if (!is.null(fn)) {
     call <- invoke(fn, args)
     if (!is.null(var))
         call <- rassign(var, call)
	 if (param$nullok && (isRef(param$type) || isUserFunction(param$type, defs)))
		 call <- paste("if (!is.null(", name, "))", call)
 }
 
 call
}

genRCode <-
  #
  #  Generate S code for a function representing the function from the defs
  #  description `fun'.
  #
function(fun, defs, name, sname, className = NULL, package = "RGtk2")
{
  if(missing(name))
    name <- fun$name

  # attempt to get class out of defs (like if we have a method)
  className <- mapToClassName(fun)

  if (missing(sname)) { # we convert the function name to Java-like name
      classNames <- className
      if(is.null(classNames)) # weren't successful with heuristic above
          classNames <- c(names(defs$objects),  names(defs$boxes),
            names(defs$interfaces), names(defs$pointers))
      sname <- toCapPhraseName(name, classNames=classNames)
  }

  params <- fun$parameters

  # use only the in (or in-out) parameters
  inParams <- NULL
  if (length(params) > 0)
      inParams <- params[which(as.logical(sapply(params, isInParam)))]

  if (isMethod(fun)) # method definitions leave off the object (first parameter)
      inParams <- c(object=makeObjectParam(fun$ofobject), inParams)
  if (isVirtual(fun))
     inParams <- c(object_class=makeObjectParam(toClassType(fun$ofobject, defs)), inParams)

  sargs <- list()
  coerce <- NULL
  if(length(inParams) > 0) {
      badNames <- which(names(inParams) == "function")
      if (length(badNames) > 0) # 'function' is a reserved word in R, is there some automatic way to do this?
          names(inParams)[badNames] <- "fun"
	  # we have to remove parameters that should be hidden or ignored
      remove <- which(sapply(inParams, function(x) { isHiddenParam(x, inParams) || isIgnoredParam(x) }))
      if (length(remove) > 0)
          inParams <- inParams[-remove]
      sargs <- getDefaultSArgs(inParams)
	  # if we know the types (not a property constructor) coerce them
      if (!isPropertyConstructor(fun))
        coerce <- sapply(names(inParams), function(name) {
            coerceRValueCode(inParams[[name]], name, defs)
        })
  }

   # Add the show argument if this is a constructor
   # And we check this is a widget class.
  if(isConstructor(fun) && inheritsClass(className, defs$objects, "GtkWidget")) {
       sargs["show"] <- TRUE
  }

  # flush and warn of deprecation by default
  # sargs[".flush"] <- "TRUE"
  # sargs[".depwarn"] <- "TRUE"

  # add error warning option if the function returns a GError
  hasError <- any(getParamTypes(params) == "GError**")
  if (hasError) {
      sargs[".errwarn"] <- TRUE
  }

  # code starts here

    txt <- c("",
    declareRFunction(sname, sargs),
    "{")
    # check for deprecation
    if(isDeprecated(fun)) {
        txt <- c(txt,
        ind(c(invoke("if", invoke("getOption", lit("depwarn"))),
            ind(invokev(".Deprecated", lit(fun$deprecated), lit(package))))),
        "")
    }

    txt <- c(txt,
    ind(coerce),
    "",
    ind(rassign("w", invoke(".RGtkCall", c(lit(nameToC(name)), nameToS(names(inParams)),
      named("PACKAGE", lit(package)))))))
 

    if (hasError)
        txt <- c(txt, "",
        ind(rassign("w", invokev("handleError", "w", ".errwarn"))))

    if ("show" %in% names(sargs))
        txt <- c(txt, "",
        ind(c("if(show)",
            ind(invoke("gtkWidgetShowAll", "w")))))

    # return invisible if void function and no out-params
    if(fun$"return" == "none" && length(inParams) != length(fun$parameters))
        txt <- c(txt, "",
        ind(invoke("return", invoke("invisible", "w"))))
    else
        txt <- c(txt, "",
        ind(invoke("return", "w")))

  txt <- c(txt, "}")
  paste(txt, collapse="\n")
}

### C - the R stuff was just a warmup

convertToCType <-
function(paramname, paramtype, defs, params = NULL, nullOk = FALSE, prefix = T, owns = F)
{

 if(is.list(paramtype))
   paramtype <- paramtype[[1]][1]

 type <- baseType(paramtype)
 # don't get confused by the array-like G[S]List specification
 if (length(grep("G[S]List", dearray(type))) > 0)
   type <- dearray(type)
 
 if (prefix)
   name <- nameToSArg(paramname)
 else name <- paramname

 # the components
 fun <- NULL
 cast <- toValidType(paramtype)
 macro <- NULL
 args <- name

 out <- !is.null(params) && params[[paramname]]$access == "out"
 
 if(!is.null(gtype <- getGenericType(type))) {
	 # automatically initialize array size parameters to vector length
     if (!is.null(params) && isArrayLengthParam(params[[paramname]], params)) {
         fun <- "GET_LENGTH"
         args <- nameToSArg(getArrayParamForSize(paramname, params)$name)
     } else fun <- asC(gtype) # primitive type conversion functions ~ 'asType'
     if ((out || is.null(params)) && gtype == "string" && !isConst(paramtype))
       macro <- "g_strdup"
 } else if(isEnum(type, defs)) { # enums and flags are converted using GEnum
    fun <- "asCEnum"
	args <- c(args, defs$typecodes[[type]])
 } else if(isFlag(type, defs)) {
     fun <- "asCFlag"
    args <- c(args, defs$typecodes[[type]]) 
 } else if (type %in% transparentTypes) { # transparent types ~ 'asCType'
    fun <- asC(type)
    if ((type == "GList" || type == "GSList") && owns)
      fun <- paste(fun, "Dup", sep="")
    cast <- NULL
    #if (out && !isRef(paramtype))
    #  fun <- derefName(fun)
 # if we have a destroy function as a parameter, we need to provide the correct one
 # for user data passed when registering a callback, we just sink the gclosure
 # that encapsulates the R callback
 # for any other case, we assume it is just some user data associated with
 # some object and we pass the SEXP directly, so we use R_ReleaseObject
 } else if (type == "GDestroyNotify" || type == "GtkDestroyNotify" || type == "cairo_destroy_func_t") {
     if (!is.null(params) && any(isUserFunction(getParamTypes(params), defs)))
         args <- "R_freeCBData" # user function data
     else args <- "R_ReleaseObject" # generic data
 } else if (type == "GtkClipboardClearFunc") { # special destroy func for clipboard stuff
     args <- "S_GtkClipboardClearFunc"
 } else if (type == "GdkAtom[]") { # GdkAtom is truly annoying
     fun <- "asCGdkAtomArray"
 } else if (isArray(type)) {
     #dtype <- deref(type)
     vtype <- toValidType(deref(dequalify(paramtype)))
     if (isEnum(vtype, defs)) {
         fun <- "asCEnumArray"
         args <- c(args, vtype, defs$typecodes[[vtype]])
     }  else if (isPrimitiveType(vtype) && getGenericType(vtype) == "string")
         fun <- "asCStringArray"
     else {
         if (!isRef(vtype) && !isPrimitiveType(vtype))
           fun <- "asCArrayRef"
         #if (vtype %in% transparentTypes && !isPrimitiveType(vtype))
         #  fun <- "asCArrayRef"
         else if (owns)
           fun <- "asCArrayDup"
         else fun <- "asCArray"
         args <- c(args, vtype, convertToCType(name, vtype, defs, owns = owns)$fun)
     }
 } else if (type == "gpointer") {
     fun <- "asCGenericData" # for associating some R object with some GObject
 } else {
     fun <- "getPtrValue"
     if (owns && isObject(type, defs))
       fun <- paste(fun, "WithRef", sep="")
	 if (isCairoType(type))
		 cast <- paramtype
     else if (type %in% names(defs$typecodes) || type %in% opaqueTypes ||
      isClass(type) || isIface(type)) {
         if (isObject(type,defs) || isInterface(type, defs)) { # use the GType macro for casting
             macro <- sub("TYPE_","",defs$typecodes[[type]])
             #if (isClass(type))
             #    macro <- paste(macro, "_CLASS", sep="")
             if (type == "GdkDisplay") # one special case
                 macro <- paste(macro, "_OBJECT", sep="")
             cast <- NULL
         } # otherwise just simple cast
     } else {
         warning(paste("Unknown type:",paramtype))
     }
	 
 }

 if (owns) {
   if (isBoxed(type, defs))
     macro <- defs$boxes[[type]]$copy
   else if (type %in% names(copyFuncs))
     macro <- copyFuncs[type]
 }
 
 val <- args
 if (!is.null(fun))
     val <- invoke(fun, val)
 if (!is.null(macro))
     val <- invoke(macro, val)
 if (!is.null(cast))
     val <- cast(cast, val)
 if(nullOk && isRef(paramtype))
	 val <- paste(invoke("GET_LENGTH", name), "== 0 ? NULL :", val)
 list(code=val, args=args, fun=fun, macro=macro, cast=cast, deref=deref)
}

convertToR <-
  #
  # generate the appropriate command that takes the result from the call
  # to the real C routine and converts it to the appropriate R value.
  #
  # I would document this stuff if I could explain it in less than 1000 words.
  # All I know is that it works
function(var, ptype, fun = NULL, defs)
{
  type <- baseType(ptype)
  out <- !is.null(fun$parameters[[var]]) &&
         fun$parameters[[var]]$access == "out"
  fn <- NULL
  args <- var
  ## G(S)Lists have their subtype specified in [ ]
  if (length(grep("G[S]?List", ptype)) > 0) { 
    split <- strsplit(ptype, "\\[")[[1]]
    fn <- asR(split[[1]])
    type <- substr(split[[2]], 1, nchar(split[[2]]) - 1)
    if (!is.null(fun))
      fun$owns <- 0 # assume the elements are not owned by caller
    conv <- convertToR(var, type, fun, defs)
    args <- conv$args
    args[1] <- var
    if (length(grep("^toRPointer", conv$fun)) > 0)
      fn <- paste(fn, sub("toRPointer", "", conv$fun), sep="")
    else {
      if (conv$fun == "asRNumeric") # unsigned integer, asRNumeric won't work
        conv$fun <- "asRUnsigned"
      args <- c(args, cast("ElementConverter", conv$fun))
      fn <- paste(fn, "Conv", sep = "")
    }
  } else if (type %in% transparentTypes) {
    ## these come first to override primitive type
    fn <- asR(type)
  } else if (isPrimitiveType(type)) {
    fn <- getGenericTypeAsR(type)
  } else if (isArray(type)) {
    etype <- deref(toValidType(type))
    if (isPrimitiveType(etype))
      fn <- paste(getGenericTypeAsR(etype), "Array", sep="")
    else {
      conv <- convertToR(var, etype, fun, defs)
      if (length(grep("^asREnum", conv$fun)) > 0) {
        fn <- "asREnumArray"
        args <- c(args, conv$args[[2]])
      } else if (length(grep("^toRPointer", conv$fun)) > 0) { # rare
        args <- c(args, conv$args[[2]])
        if (isArray(deref(ptype))) {
          fn <- paste(conv$fun, "Array", sep="")
          if (length(conv$args) == 3)
            args <- c(args, conv$args[[3]])
          } else fn <- "asRStructArray" # need to separate in memory
        } else {
          if (dequalify(deref(ptype)) %in% transparentTypes && type != "GdkAtom[]") {
            fn <- "asRArrayRef" # converter returns a reference
          } else fn <- "asRArray" # returns a value
            args <- c(args, conv$fun)
        }
      }
      if (nchar(arraySize(type)) > 0) { # sometimes the size is explicitly specified
        fn <- paste(fn, "WithSize", sep="")
        args <- c(args, arraySize(type))
      } else if (length(fun$parameters) > 0) {
        nind <- which(sapply(fun$parameters, function(param) {
          type <- deref(param$type)
          param$name != var && param$access == "out" && isPrimitiveType(type) &&
            (getGenericType(type) == "integer" || getGenericType(type) == "numeric")
        }))
        if (length(nind) > 0 || (isPrimitiveType(fun$return) && getGenericType(fun$return) == "integer")) {
          fn <- paste(fn, "WithSize", sep="")# attempt to guess the size variable for an array
          if (length(nind) > 0)
            args <- c(args, fun$parameters[[nind[[1]]]]$name)
          else args <- c(args, "ans")
        }
      }
    } else if(isEnum(type, defs)) {
      #if (isCairoType(type))
        #	args <- invoke("asRInteger", var)
      #	fn <- paste("S_check", type, "value", sep="_")
      fn <- "asREnum"
      args <- c(args, defs$typecodes[[type]])
    } else if(isFlag(type, defs)) {
      fn <- "asRFlag"
      args <- c(args, defs$typecodes[[type]])
    } else if(length(grep("^GdkEvent", type)) > 0) {
      fn <- "toRGdkEvent" # special handling of gdk events
      args <- c(cast(refType("GdkEvent"), args), ifelse(fun$owns, "TRUE", "FALSE"))
    } else if(type == "PangoAttribute") {
      fn <- "asRPangoAttribute" # special handling of pango attributes
      if (is.null(fun) || !fun$owns)
        fn <- paste(fn, "Copy", sep="")
    } else if (type == "GdkFont") { # also GdkFont (need to ref it)
      fn <- "toRGdkFont"
    } else if (type != "gpointer") {
      args <- c(args, lit(asRTypeName(type)))
      postfix <- NULL
      finalizer <- NULL
      if ((!is.null(fun) || isBoxed(type, defs)) && 
          !inheritsClass(type, defs$objects, "GtkObject")) {
        # we're in a function (not accessor) should probably set finalizer
        # exception: boxed types need to be copied / finalized
        if (type %in% names(cleanupFuncs))
          finalizer <- cleanupFuncs[[type]]
        else if (type %in% names(finalizerFuncs))
          finalizer <- finalizerFuncs[[type]]
        else if (isBoxed(type, defs)) { # boxed type -> release func as finalizer
          # but we must own memory before freeing it (gotta check for NULL though)
          if (is.null(fun) || (fun$owns == 0 && !out))
            args[1] <- paste(args[1], "?", invoke(defs$boxes[[type]]$copy, args[1]), ": NULL")
          finalizer <- defs$boxes[[type]]$release
          ptype <- dequalify(ptype) # output of copy func is no longer const
        } else if (isPointer(type, defs) && (fun$owns == 1 || out)) {
          finalizer <- "g_free"
        } else if (isObject(type, defs) || isInterface(type, defs)) {
          needRef <- isConstructor(fun) || (fun$owns == 1 && !out)
          if (isCairoType(type)) {
            stype <- stripCairoType(type)
            if (needRef) # cairo 'objects' are managed by [type]_destroy and [type]_reference
              finalizer <- paste(stype, "destroy", sep="_")
            else { 
              postfix <- "WithCairoRef"
              args <- c(args, stype)
            }
          } else if (needRef)
					  finalizer <- "g_object_unref"
          else postfix <- "WithRef" 
        }
        if (!is.null(finalizer) && nchar(finalizer) > 0 && !isConst(ptype)) {
          postfix <- "WithFinalizer"
          args <- c(args, paste("(RPointerFinalizer)", finalizer))
        } else if (isUserFunction(type, defs)) {
            postfix <- "Fn"
            args[[1L]] <- cast("DL_FUNC", args[[1L]])
        }
      } else if (inheritsClass(type, defs$objects, "GtkObject"))
        postfix <- "WithSink" # we claim ownership of GtkObjects
      else if (isObject(type, defs) || isInterface(type,defs))
        postfix <- "WithRef" # GObject, non-constructor and caller doesn't own return -> WithRef
      fn <- paste("toRPointer", postfix, sep="")
  }
 code <- args # if no conversion, just assume it is a SEXP (user data)
 if (!is.null(fn))
   code <- invoke(fn, args)
 list(code=code, fun=fn, args=args)
}

# ok, that was just the appetizer

convertUserFunction <-
function(name, params, defs)
{
    # we get the first gpointer-typed param searching from func to end then func to beginning
    # and call that the data param
    freeData <- FALSE
    func <- which(name == names(params))
    type <- params[[func]]$type
    sorted <- c(params[(func+1):length(params)], rev(params[1:(func-1)]))
    found <- which("gpointer" == lapply(sorted, function(x) x$type))
    if (length(found) == 0) { # handles "global" hooks (no user-data)
      data <- paste(type, "_cbdata", sep="") # cannot init extern declaration
      data <- paste(statement(data), data, sep="\n")
      sdata <- "NULL"
    } else {
        if (!any(grepl("DestroyNotify", getParamTypes(params))) &&
            !type %in% asyncUserFuncs)
          freeData <- TRUE # like for a 'foreach' func
        data <- sorted[[found[[1]]]]$name
        sdata <- nameToSArg(data)
    }
	declaration <- decl("R_CallbackData*", data)
	if (length(found) == 0) # import global symbol with 'extern'
		declaration <- extern(declaration)
  s_func <- cast(type, nameToC(type))
  if (params[[func]]$nullok)
    s_func <- paste(invoke("GET_LENGTH", nameToSArg(name)), "== 0 ? NULL :", s_func)
  coercion <- statement(c(cassign(decl(type, name), s_func),
    cassign(declaration, invoke("R_createCBData", c(nameToSArg(name), sdata)))))
  list(coercion = coercion, data = data, freeData = freeData)
}

since <- function(def, ..., .error = TRUE)
{
  if (!length(def$since))
    return(c(...))
  check <- invoke(paste(toupper(def$module), "CHECK_VERSION", sep="_"), 
    unlist(def$since))
  error <- invoke("error", lit(paste(def$name, "exists only in", def$module, 
    ">=", as.character(def$since))))
  c(
    paste("#if", check), 
    ...,
    if (.error) c(
    "#else",
    statement(error)
    ),
    "#endif"
  )
}

genCCode <-
function(fun, defs, name)
{
 if(missing(name)) {
   name <- fun$name
 }
 call <- name

  cleanup <- character(0)

 if(fun$"return" != "none") {
   retVal <- "ans"
   ansDecl <- statement(decl(fun$"return", "ans"))
   cvtResult  <- statement(cassign("_result", convertToR("ans", fun$"return", fun, defs)$code))
   if (fun$owns == 1) {
	   clean <- getCleanup(fun$return, "ans")
	   if (!is.null(clean))
		   cleanup <- c(cleanup, statement(clean))
   }
 } else {
   retVal <- character(0)
   ansDecl <- character(0)
   cvtResult <- character(0)  # "\n\treturn(NULL_USER_OBJECT);"
 }

 parameters <- fun$parameters
 if (isMethod(fun))
     parameters <- c(object=makeObjectParam(fun$ofobject), parameters)
 if (isVirtual(fun))
   parameters <- c(object_class=makeObjectParam(mapClassType(toClassType(fun$ofobject, defs))), 
    parameters)
   
 params <- parameters
 if (length(parameters)) {
     ignore <- which(sapply(parameters, isIgnoredParam))
     if (length(ignore) > 0) {
         names(parameters)[ignore] <- "NULL"
         params <- parameters[-ignore]
     }
 }

 inp <- NULL
 if (length(params)) {
     inp <- which(as.logical(sapply(params, isInParam)))
 }
 inParams <- params[inp]
 if (length(inp) > 0)
     outParams <- params[-inp]
 else outParams <- params

 args <- character(0)
 declCode <- character(0)
 if(length(inParams)) { # now the fun begins
   tmpParams <- inParams
   declParams <- tmpParams
   hidden <- which(sapply(tmpParams, isHiddenParam, tmpParams))
   if (length(hidden) > 0) {
       declParams <- tmpParams[-hidden]
   }
   args <- names(declParams)
   if (!isPropertyConstructor(fun)) {
        if (length(userFuncs<-which(isUserFunction(getParamTypes(tmpParams),defs))) > 0) {
            remove <- NULL # this code is ugly - user functions add much complexity
            declCode <- c(declCode, lapply(names(tmpParams[userFuncs]), function(name) {
                ret <- convertUserFunction(name, tmpParams, defs)
                remove <<- c(remove, name, ret$data)
                if (ret$freeData) # need to free the data right after call
                    cleanup <<- c(cleanup, statement(invoke("R_freeCBData", ret$data)))
                ret$coercion
            })) # don't consider these parameters again for coercion
            tmpParams <- tmpParams[-which(names(tmpParams) %in% remove)]
        }
        declCode <- c(declCode, sapply(names(tmpParams), function(name) {
            type <- tmpParams[[name]]$type # we have to cast to non-const for cleanup in this case
            clean <- getCleanup(type, cast(toValidType(dequalify(type)), name), out = F)
            if (!is.null(clean))
                 cleanup <<- c(cleanup, statement(clean))
            coerceCode <- convertToCType(name, type, defs, inParams, tmpParams[[name]]$nullok == "1")$code
            statement(cassign(decl(type, name), coerceCode))
        }))
   }
 }

 if (isPropertyConstructor(fun)) { # this mess necessitated by pygtk's new "property-based" constructor defs
     obj <- defs$objects[[fun$constructorof]]
     if (length(inParams) > 0) {
         declCode <- statement(c(
            cassign(decl("char *", "prop_names[]"), arrinit(c(lit(sapply(inParams, function(x) x$pname)), "NULL"))),
            cassign(decl("USER_OBJECT_", "args[]"), arrinit(nameToSArg(names(inParams))))))
         argCallNames <- c(obj$typecode, "prop_names", "args", length(inParams))
     } else argCallNames <- c(obj$typecode, "NULL", "NULL", "0")
     call <- "propertyConstructor"
 } else argCallNames <- getArgCallValues(parameters, defs)

 # ok, done with the in-params, now for the out stuff

  outDecl <- character(0)
  outRet <- character(0)
 if (length(outParams) > 0) {
     outDecl <- sapply(names(outParams), function(name) {
       type <- outParams[[name]]$type
       alloc <- character(0)
       dtype <- deref(type) # single pointers need allocation
       if (isPointer(dtype, defs) || (dtype %in% transparentTypes && dtype != "GdkAtom")) {
         alloc <- malloc(dtype)
       } else if (isObject(dtype, defs)) {
         alloc <- invokev(getConstructor(dtype, defs))
       } else {
         if (refCount(type) > 1)
           alloc <- "NULL" # init pointers to null
         type <- dtype
       }
       if (!(isPrimitiveType(dtype) && getGenericType(dtype) == "string")) {
         clean <- statement(getCleanup(dtype, name)) # basically for transparent types
         if (!is.null(clean)) # we don't free strings returned by ref
           cleanup <<- c(cleanup, clean)
       }
       out <- decl(type, name)
       if (length(alloc) > 0)
         out <- cassign(out, alloc)
       statement(out)
     })

     outRetParams <- NULL
     sapply(names(outParams), function(name) {
       dtype <- deref(outParams[[name]]$type)
       if (isBoxed(dtype, defs) && !(dtype %in% transparentTypes))
         conv_name <- refName(name)
       else conv_name <- name
       converted <-
           convertToR(conv_name, deref(outParams[[name]]$type), fun,defs)$code
       outRetParams <<- c(outRetParams, lit(nameToS(name)), protect(converted))
     })

     if (!is.null(outRetParams)) {
         retByValArgs <- c(protect("_result"), outRetParams)
         retByValCall <- invoke("retByVal", c(retByValArgs, "NULL"))
         outRet <- c("",
                     statement(cassign("_result", retByValCall)),
                     statement(unprotect(length(outRetParams)/2L + 1L)))
     }
 }

 if (isVirtual(fun)) {
   call <- field(argCallNames[1], fun$vname)
   argCallNames <- argCallNames[-1]
 }
 
 invocation <- invoke(call, argCallNames)
 if (length(retVal) > 0) {
     invocation <- cassign(retVal, invocation)
 }
 invocation <- statement(invocation)

 # ok, finally done with the setup, now gen the code

 declaration <- declareFunction("USER_OBJECT_", name, "USER_OBJECT_", args)
 txt <- c(
  declaration,
  "{", 
    statement(cassign(decl("USER_OBJECT_", "_result"), "NULL_USER_OBJECT")),
    since(fun, 
      declCode,
      "",
      ansDecl,
      outDecl,
      "",
      invocation,
      "",
      cvtResult,
      outRet,
      cleanup
    ), "",
    statement(returnValue()),
  "}",
  "")

 list(code=paste(txt, collapse="\n"),  decl = statement(declaration))
}

# gets the code for cleaning up a variable of the given 'name' and 'type'
getCleanup <-
function(type, name, out = T)
{
    code <- NULL
	func <- NULL
	if (length(grep("G[S]?List", type)) > 0) {
		split <- strsplit(type, "\\[")[[1]]
		type <- split[[1]] # special case: strings in G(S)Lists must be freed
		if (length(split) > 1 && substr(split[[2]], 1, nchar(split[[2]])-1) == "gchar*")
			func <- paste(type, "FreeStrings", sep="")
	}
    func <- c(func, getCleanupFunc(type, name, out))
    if (!is.null(func) && nchar(func) > 0)
        code <- c(code, statement(invokev("CLEANUP", func, name)))
    code
}
# gets the actual function used for cleaning an instance of a type
getCleanupFunc <- function(type, name, out)
{
	func <- NULL
	btype <- baseType(type)
	if (btype %in% names(cleanupFuncs))
    func <- cleanupFuncs[[btype]] # custom cases
  else if (out && isPrimitiveTypeRef(type) && getGenericTypeRef(type) == "string")
    func <- "g_strfreev" # string arrays
  else if (out && !isConst(type) && ((btype %in% transparentTypes && 
           !isPrimitiveType(btype) && type != "GdkAtom") || isRef(btype)))
    func <- "g_free" # basically non-const (remaining) transparents and strings
	func
}
getArgCallValues <-
  #
  #
  # returns the actual form of the values that are to be passed to the
  # real/underlying C function. Right now this only references certain
  # 'out' parameters
  #
  #

function(params, defs)
{
  if(length(params) == 0)
    return(character(0))

  types <- getParamTypes(params)
  refs <- which(sapply(params, function(param) {
      type <- deref(param$type)
      !isInParam(param) && !isPointer(type, defs) && !isObject(type, defs) &&
        (!(type %in% transparentTypes) || type == "GdkAtom")
  }))
  if (length(refs) > 0)
      names(params)[refs] <- paste("&", names(params)[refs], sep="")
  names(params)
}

##################
# User-Function Code Generation
##################

# should be self-explanatory. tired of documenting and baby is crying.

declareParamGValues <- function(names, name="params") {
    cassign(decl("GValue *", name), salloc(length(names), "GValue"))
}
declareReturnGValue <- function(name="ans") {
    cassign(decl("GValue *", name), salloc(1, "GValue"))
}
declareReturnValue <- function(type, name="_result") {
    decl(type, name)
}

initParamGValues <- function(params, defs, name="params") {
  codes <- defs$typecodes[baseType(getParamTypes(params))]
  missing <- sapply(codes, is.null)
	codes[missing] <- "G_TYPE_POINTER"
  invokev("g_value_init", arrind(refName(name),c(1:length(params))-1), codes)
}
storeParamGValues <- function(params, defs, name="params") {
  types <- getParamTypes(params)  
  args <- sapply(names(types), function(param_name) {
    arg <- nameToSArg(param_name)
    type <- baseType(types[param_name])
    if (type %in% transparentTypes)
      arg <- invoke(asR(type), arg)
    arg
  })
  invokev(paste("g_value_set_", getGValueToken(types, defs),sep=""),
    arrind(refName("params"),c(1:length(params))-1), args)
}

getGValueToken <- function(type, defs = NULL) {
    type <- baseType(type)
    sapply(type, function(t) {
        if (isPrimitiveType(t)) {
			if (t == "GType")
                "ulong"
            else if (t == "GQuark" || t == "gunichar" || t == "gsize")
                "uint"
            else if (!is.null(defs) && defs$typecodes[[t]] == "G_TYPE_CHAR")
                "char"
            else if (getGenericType(t) == "string")
                "string"
            else gsub("^g","",t)
        } else if (isEnum(t,defs))
            "enum"
        else if (isFlag(t, defs))
            "flags"
        else if (isObject(t, defs) || isInterface(t, defs))
            "object"
        else if (isBoxed(t, defs))
            "boxed"
        else "pointer"
    })
}

initReturnGValue <- function(type, defs, name="ans") {
	typecode <- defs$typecodes[[baseType(type)]]
	if (is.null(typecode))
		typecode <- "G_TYPE_POINTER"
    invokev("g_value_init", name, typecode)
}

invokeGClosure <- function(nparams, dataName = "data", retName = "ans", paramsName = "params", hint = "NULL") {
    invokev("g_closure_invoke", dataName , retName, nparams, paramsName, hint)
}

returnFromGValue <- function(type, defs, name = "ans") {
    returnValue(invoke(paste("g_value_get_", getGValueToken(type, defs), sep=""), name))
}

genUserFunctionCode_old <-
function(fun, defs) {
	code <- ""
    header <- declareFunction(fun$return, fun$name, dequalify(getParamTypes(fun$parameters)), names(fun$parameters))
    declaration <- header

    params <- fun$parameters

    dataInd <- which(getParamTypes(params) == "gpointer")
    hasData <- length(dataInd) > 0

    if (hasData) {
        dataInd <- dataInd[[1]]
        data <- params[[dataInd]]
        params <- fun$parameters[-dataInd]
        dataName <- nameToSArg(data$name)
    } else {
        dataName <- paste(fun$name, "_closure", sep="")
        code <- c(code, statement(decl("GClosure*", dataName)))
    }

    hasParams <- length(params) > 0
    hasReturn <- fun$return != "none"

    paramsName <- "params"
    if (!hasParams)
        paramsName <- "NULL"
    retName <- "ans"
    if (!hasReturn)
        retName <- "NULL"

    code <- c(code,
    header,
    "{")
    if (hasParams) {
        code <- c(code,
        statement(declareParamGValues(names(params))))
    }
    if (hasReturn) {
        code <- c(code, "",
        statement(declareReturnGValue()),
        "",
        statement(initReturnGValue(fun$return, defs)))
    }
    if (hasParams) {
        code <- c(code, "",
        statement(initParamGValues(params, defs)),
        "",
        statement(storeParamGValues(params, defs)))
    }
    code <- c(code, "",
    statement(invokeGClosure(length(params), dataName, retName=retName, paramsName=paramsName)))
    if (hasReturn) {
        code <- c(code, "",
        statement(returnFromGValue(fun$return, defs)))
    }
    code <- c(code,"}")
    list(code=paste(code,collapse="\n"), decl=statement(declaration))
}

########
# Second attempt at user function stuff
########

classSymbol <- function(name) nameToC(paste(name, "symbol", sep="_"))

genUserFunctionCode <- function(fun, defs, name = fun$name, virtual = 0, package = "RGtk2")
{
  code <- ""
  params <- fun$parameters

  if (virtual)
    params <- c(object=makeObjectParam(fun$ofobject), params)
  
  param_types <- getParamTypes(params)
  param_names <- names(params)
  ret_type <- toValidType(fun$return)
  
  header <- declareFunction(ret_type, name, param_types, param_names)
  declaration <- header
  if (virtual) {
      header <- static(header)
  }
  
  export_code <- exportFunc(fun, nameToC(name), param_types, param_names, package)
  import_code <- importFunc(fun, nameToC(name), ret_type, param_types, param_names, package)
  
  if (!virtual) { # user function needs user-data
    dataInd <- which(getParamTypes(params) == "gpointer")
    hasData <- length(dataInd) > 0
    if (hasData) {
      dataInd <- dataInd[[1]]
      data <- params[[dataInd]]
      params <- fun$parameters[-dataInd]
      dataName <- cast(refType("R_CallbackData"), nameToSArg(data$name))
    } else {
      dataName <- paste(fun$name, "_cbdata", sep="")
      code <- c(code, statement(decl(refType("R_CallbackData"), dataName)))
    }
  } 

  hasReturn <- fun$return != "none"
  retName <- nameToSArg("ans")
  err_ret <- NULL
  if (hasReturn)
    err_ret = cast(ret_type, "0")
    
  in_params <- list()
  if (length(params) > 0)
    in_params <- params[sapply(params, isInParam)]
    
  dummyParams <- lapply(in_params, function(param) {
    param$access <- "out"
    param$name <- nameToSArg(param$name)
    param$type <- dequalify(param$type)
    param
  })
  dummyFun <- fun
  dummyFun$parameters <- dummyParams
  dummyFun$owns <- 0
  
  fun_code <- ifelse(virtual, 
    #vecind(paste("*", cast(refType("SEXP"), "s_object + query.instance_size"), sep=""), virtual),
    #vecind(invokev("g_object_get_qdata", invoke("G_OBJECT", "s_object"), classQuark(fun$ofobject)), virtual),
    vecind(invokev("findVar", classSymbol(fun$ofobject), invoke("S_GOBJECT_GET_ENV", "s_object")), virtual),
    #invokev("G_STRUCT_MEMBER", "SEXP", 
    #  invoke("G_OBJECT_GET_CLASS", "s_object"), "query.class_size")), virtual),
    field(dataName, "function"))
  
  lang_length <- length(in_params)+1
  if (!virtual)
    lang_length <- paste(lang_length, field(dataName, "useData"), sep="+")
  
  code <- c(code,
  header,
  "{",
    statement(decl("USER_OBJECT_", "e")),
    statement(decl("USER_OBJECT_", "tmp")),
    statement(decl("USER_OBJECT_", retName)),
    statement(decl("gint", "err")),
    "",
    #if (virtual) {
    #  c(statement(decl("GTypeQuery", "query")), 
    #    statement(invokev("g_type_query", invoke("G_OBJECT_TYPE", "s_object"), refName("query"))),
    #    "")
    #},
    statement(alloc("e", "lang", lang_length)),
    statement(cassign("tmp", "e")),
    "",
    statement(pushvec("tmp", fun_code)),
    "",
    statement(sapply(dummyParams, function(param) {
      conversion <- convertToR(param$name, param$type, dummyFun, defs)$code
      if (virtual && baseType(param$type) == fun$ofobject)
        conversion <- invokev("S_G_OBJECT_ADD_ENV", param$name, conversion)
      pushvec("tmp", conversion)
    })),
    if (!virtual) {
      c(ind(invoke("if", field(dataName, "useData"))), 
      ind("{"),
        statement(pushvec("tmp", field(dataName, "data")), 2),
      ind("}"))
    },
    "",
    statement(cassign("s_ans", invokev("R_tryEval", "e", "R_GlobalEnv", "&err"))),
    if (name %in% asyncUserFuncs) {
      statement(invoke("R_freeCBData", dataName))
    },
    "",
    statement(unprotect(1)),
    "",
    ind("if(err)"),
      statement(returnValue(err_ret), 2))
    
    # out parameters
    s_result <- "s_ans"
    if (length(params) > length(in_params)) {
      dummy_out_params <- out_params <- params[!sapply(params, isInParam)]
      names(dummy_out_params) <- vecind("s_ans", (1:length(out_params))+hasReturn)
      code <- c(code, unlist(lapply(names(dummy_out_params), function(param_name) {
        type <- dummy_out_params[[param_name]]$type
        btype <- baseType(type)
        # caller has allocated memory already?
        allocated <- (!isPrimitiveType(btype) && btype %in% transparentTypes || 
          isBoxed(btype, defs)) && refCount(type) == 1
        conv <- convertToCType(param_name, if (allocated) type else deref(type), 
          defs, dummy_out_params, prefix=F, owns=!allocated)$code
        out_name <- derefName(nameToSArg(dummy_out_params[[param_name]]$name))
        if (allocated && btype %in% transparentTypes) {
          tmp_name <- dummy_out_params[[param_name]]$name
          c("{",
            statement(cassign(decl(type, tmp_name), conv)),
            statement(cassign(out_name, derefName(tmp_name))),
            statement(invoke("g_free", tmp_name)),
          "}")
        } else {
          if (allocated) # boxed type, copy by value
            conv <- derefName(conv)
          statement(cassign(out_name, conv))
        }
      })))
      
      s_result <- vecind("s_ans", 1)
    }
    
    if (hasReturn)
      code <- c(code,
        statement(returnValue(convertToCType(s_result, fun$return, defs, prefix=F, 
          owns=fun$owns)$code)))
  code <- c(code,
  "}")
  
  if (!virtual) # virtuals are conditioned differently
    code <- since(fun, code, .error = FALSE)
  
  decl <- since(fun, statement(declaration), .error = FALSE)
  
  list(code=paste(code,collapse="\n"), decl = paste(decl, collapse="\n"),
    import = import_code, export = export_code)
}

########
# Transparent type conversion
########

genTransparentAsC <- 
function(struct, defs)
{
  type <- struct$name
  ptype <- refType(type)
  code <- c(declareFunction(ptype, asC(type), "USER_OBJECT_", "s_obj", F),
    "{",
      statement(decl(ptype, "obj")),
      "",
      statement(cassign("obj", ralloc(1, type))),
      "",
      sapply(1:length(struct$fields), function(field) {
        statement(cassign(field("obj", names(struct$fields)[field]), 
          convertToCType(vecind("s_obj", field), struct$fields[[field]], 
            defs, prefix=F)$code))
      }),
      "",
      statement(returnValue("obj")),
    "}"
  )
  paste(code, collapse="\n")
}

genTransparentAsR <- 
function(struct,defs)
{
  type <- struct$name
  ptype <- refType(type)
  code <- c(declareFunction("USER_OBJECT_", asR(type), ptype, "obj", F),
  "{",
    statement(decl("USER_OBJECT_", "s_obj")),
    statement(cassign(decl(static("gchar *"), arrind("names", "")), 
      arrinit(lit(names(struct$fields)), T))),
    "",
    statement(alloc("s_obj", "vec", length(struct$fields))),
    "",
    sapply(1:length(struct$fields), function(field) {
      statement(setvec("s_obj", field, convertToR(field("obj", names(struct$fields)[field]), 
        struct$fields[[field]], defs=defs)$code))
    }),
    "",
    statement(setnames("s_obj", invoke(asR("StringArray"), "names"))),
    statement(setclass("s_obj", invoke(asR("String"), lit(asRTypeName(type))))),
    "",
    statement(unprotect(1)),
    "",
    statement(returnValue("s_obj")),
  "}"
  )
  paste(code, collapse="\n")
}

genTransparentCoerce <-
function(struct, defs)
{
  type <- struct$name
  rtype <- asRTypeName(type)
  code <- c(declareRFunction(asCoerce(type), "x"),
  "{",
  ind(c(rassign("x", invokev("as.struct", lit(rtype), invoke("c", lit(names(struct$fields))))),
    sapply(1:length(struct$fields), function(field) {
      param <- list(name = listind("x", field), type = struct$fields[[field]], 
        nullok = 0, access="in")
      coerceRValueCode(param, listind("x", field), defs)
    }),
    "",
    returnValue("x")
   )),
  "}")
  paste(code, collapse="\n")
}


# exporting and importing using [register/get]CCallable()

exportFunc <- 
function(def, name, arg_types, arg_names, package)
{
  paste(since(def,
    statement(invokev("R_RegisterCCallable", lit(package), lit(name), cast("DL_FUNC", name)), 0),
  .error = FALSE), collapse = "\n")
}

declareFunctionVar <- function(ret_type, name, arg_types)
{
  invoke(paste(ret_type, " (", derefName(name), ")", sep=""), arg_types) 
}

importFunc <- 
function(def, name, ret_type, arg_types, arg_names, package)
{
  if (ret_type == "none")
    ret_type <- "void"
  invocation <- invoke("fun", arg_names)
  func_type <- invoke(paste(ret_type, " (*)", sep=""), arg_types)
  code <- c(declareFunction(ret_type, name, arg_types, arg_names, F),
  "{",
    statement(cassign(static(declareFunctionVar(ret_type, "fun", arg_types)), "NULL")),
    statement(paste("if(!fun)",
      cassign("fun", cast(func_type, invokev("R_GetCCallable", lit(package), lit(name)))))),
    statement(if (ret_type != "none") returnValue(invocation) else invocation),
  "}")
  paste(since(def, code, .error=FALSE), collapse = "\n")
}

#############################
# Stuff below is basically how Duncan left it (with a few exceptions)
#############################

#########################
# Enumerations and Flags
#########################

getEnumCheckDecl <-
function(name)
{
 paste("USER_OBJECT_ ", name, "(USER_OBJECT_);")
 # (USER_OBJECT_, const char *const [], const char *const [], int [], int len, const char *const);")
}

getEnumCRoutineName <-
  #
  # The name of the C routine that implements the verification/mapping of the S object
  # to a valid value of the specified enumeration of flag and returns an S object.
  #
function(name)
{
 paste("S_check",name,"value", sep="_")
}

genCEnum <-
function(enum, name, defs = NULL, local = T, isEnum = T)
  #
  # Generate the C and R code defining and declaring code
  # to handle an enumeration or flag.
  # This returns the R definition of the enum values which is a
  # named integer vector and an R function to map a value into
  # a valid value for this type.
  # Also, it returns C code which ``computes and verifies'' the
  # a value for this type of enumeration or flag and returns a
  # value with the appropriate type.
  # And finally it returns a declaration of that C routine so
  # it can be called from other C code that is automatically generated.
  # This is necessary when such an enum or flag is returned from a C routine
  # that we are mapping.
  #
{
  # for the moment, we will have a separate R function and C code

  # We create a named vector of the form
  #  c(a = 0, b = 1, c = 2)
  # where the names a, b, c are the local or colloquial names
  # from the defs files.
  # The values are inferred from the defs file.

  # enum$values was (1:length(enum))-1.
 rName <- asRTypeName(name)
 
 storageMode <- "integer"
 className <- "enums"
 if (inherits(enum, "FlagDef")) {
	 storageMode <- "numeric"
 	 className <- "flags"
 }
 
 localVals <- paste(paste("\"", names(enum$values), "\"", sep=""), enum$values, sep=" = ")
 robjectNames <- rName
 rvector <- paste(rName, "<-", "c(", paste(localVals, collapse=",\n\t") ,")\nstorage.mode(", rName,") <- '", 
 	storageMode, "'\nclass(", rName, ") <- '", className, "'", sep="")

 #tmp <- paste(rName, "_", sep="")
 #robjectNames <- c(robjectNames, tmp)
 #tmpVals <- paste(paste("\"", enum$names, "\"", sep=""), enum$values, sep=" = ", collapse=",\n\t")
 #tmp <- paste(tmp, "<-", "c(", tmpVals ,")\nstorage.mode(", tmp,") <- '", 
 #   storageMode, "'\nclass(", tmp, ") <- '", className, "'", sep="")

 #rvector <- paste(rvector, tmp, sep="\n")

 if (FALSE) {
     # this stuff is probably not necessary anymore - enums available at runtime

 mapName <- paste("map", rName, sep="")
 cmapName <- getEnumCRoutineName(name)

 decl <- getEnumCheckDecl(cmapName)

  # The R code to check
 txt <- paste(rName, "<-\n",
              "function(val)\n{\n",
              "  if(inherits(val, \"", rName, "\"))\n",
              "    return(val)\n",
              "  .Call(\"", cmapName, "\", val)",
              "\n}\n",
             collapse="", sep="")
 robjectNames = c(robjectNames, mapName)

   # Put in \n between each element to ensure line lengths aren't execessive and kil
   # some compilers.
 localCNames <- paste("\"", names(enum$names), "\"", sep="", collapse=",\n\t\t")
 realCNames <- paste("\"", enum$names, "\"", sep="", collapse=",\n\t\t")
 cCode <- paste("USER_OBJECT_\n", cmapName,
                 "(USER_OBJECT_ val)\n{\n",
                 "  static const char * const localNames[] = {", localCNames, "};\n",
                 "  static const char * const realNames[]  = {", realCNames, "};\n",
                 "  static const int        cValues[]      = {", paste(enum$names, collapse=",\n\t"), "};\n",
                 "  return(S_check",
                      ifelse(isEnum, "Enum", "Flag"), "(val, localNames, realNames, cValues, ", length(enum$names),",\"", name,"\"));\n",
                 "}\n",
                 sep="")
 }
 list(rvector = rvector, robjectNames = robjectNames)
 #list(func= paste(txt, collapse="\n"), rvector = rvector, cCode = cCode, declaration = decl, robjectNames = robjectNames)
}


####################################################################

genFieldAccessors <-
function(types, defs, package = "RGtk2")
{
  code <- list()

  for(i in names(types)) {
    type <- types[[i]]
    #print(type$fields)
    if(length(type$fields)) {
     tmp <- list()
     for(f in names(type$fields)) {
       #  Check there isn't already an explicitly registered function for doing this.
       #  if(is.na(match(paste( classname to gtk_class format, get, i,sep="_") , names(defs$functions)))

      tmp[[f]] <-  genFieldAccessor(f, type$fields[[f]], i, type$module, type$since, defs, package)
     }
     code[[i]] <- tmp
    }
  }

  return(code)
}


genFieldAccessor <-
  #
  # produces R code to fetch the value of a slot
  # in an object.
  #
  #  gtkFileSelectionGetOkButton <- function(w) {
  #
  #    checkPtrType(w, "GtkFileSelection")
  #    ans <- .Call("S_gtkFileSelectionGetOkButton", w)
  #    class(ans) <- c(..., "GtkObject")
  #    ans
  #  }
  #
  #  and the C code looks something like
  #
  #  USER_OBJECT_
  #  S_gtkFileSelectionGetOkButton(USER_OBJECT_ sw)
  #  {
  #    GtkFileSelection *w;
  #    GtkWidget *val;
  #         w = GTK_FILE_SELECTION(getPtrValue(sw));
  #         val = w->ok_button;
  #         toRPointer(w, "GtkWidget")
  #  }
  #
function(name, type, className, module, since, defs, package = "RGtk2")
{

 sName <- asRTypeName(className)
 sPrefix <- changeCapitalization(sName, FALSE)
 sSuffix <- paste(sapply(strsplit(name,"_")[[1]], changeCapitalization), collapse="")
 sFuncName <- paste(sPrefix, "Get", sSuffix, collapse="", sep="")

 croutine <- paste("S_", sName,"Get", sSuffix, collapse="", sep="")

 rcode <- genFieldAccessorRCode(sFuncName, sName, croutine, type, defs, package)

 ccode <- genFieldAccessorCCode(name, className, croutine, type, module, since, defs)

 list(rcode = paste(rcode, collapse="\n", sep=""),
      ccode = paste(ccode, collapse="\n", sep=""),
      rfuncName = sFuncName)
}


genFieldAccessorCCode <-
function(name, className, croutine, type, module, since, defs)
{
    val <- "val"
    # sometimes need to force pointer type
    if (!isPrimitiveType(type) && !isEnum(type, defs) && !isFlag(type, defs) &&
            !isRef(type) && type != "GdkAtom" && type != "GdkNativeWindow" && type != "gpointer") {
        val <- paste("&", val, sep="")
    }

  c("USER_OBJECT_",
    paste(croutine, "(USER_OBJECT_ s_obj)"),
    "{",
    "   USER_OBJECT_ _result = NULL_USER_OBJECT;",
    "",
    since(list(name = name, module = module, since = since),
    paste("  ", className, "*obj;"),
    paste("  ", toValidType(type), "val;"),
    "",
    paste("  ", "obj =", convertToCType("obj", paste(className, "*", sep=""), defs)$code, ";"),
    paste("   val = obj->", name, ";", sep=""),
    paste("   _result = ", convertToR(val, type, defs=defs)$code, ";", sep="")),
    "",
    "   return(_result);",
    "}"
  )
}

genFieldAccessorRCode <-
function(sname, className, croutine, type, defs, package = "RGtk2")
{
   # Converts the return value to the appropriate R type
   # assigning class information deduced from the `type'
   # argument
 setClassInfo <- character(0)

 if(!is.na(match(type, names(defs$objects))))
     # we don't want to determine the class here at compile time
     # but instead arrange to have it dynamically computed
     # at run-time. So use gtkObjectGetClasses() in the generate code
     # rather than getClassList() here in this code.
     setClassInfo <- " class(v) <- gObjectGetTypeHeirarchy(v, check = FALSE)"

 rcode <- c(paste(sname , "<-"),
            "function(obj)",
            "{",
            paste("  checkPtrType(obj, '", className, "')", collapse="", sep=""),
            paste("  v <- .Call('", croutine, "', obj, ", named("PACKAGE", lit(package)), ")", 
				collapse="", sep=""),
            setClassInfo,
            "  v",
            "}")
 rcode
}

####################################################################

########################
#### DEPRECATED CODE - the graveyard
########################
if (FALSE) {

    # bury code here

    # this is the old way of doing it.. defs now include this information
mapToClassName <-
  #
  # converts a function name into the name of the associated
  # Gtk/Gdk class by
  #  a) discarding all the contents after (and including)
  #     the second _ in the name
  #
  #  b) capitalizing each letter following a `_' character.
  #
  #  c) discarding the remaining _
  #
  #  d) capitalizing the first letter
  #
  #
  # e.g.  mapToClassName("gtk_button_new")
  #       [1] "GtkButton"
  #
  #
function(name, classes, capitalize = TRUE)
{
  parts <- strsplit(name, "_")[[1]]


  upto <- pmatch("new", parts)
  if(is.na(upto))
    stop(paste("no `new' in the name of the name passed to mapToClassName", name))
  upto <- upto - 1
  which <- match(paste(parts[1:upto], collapse=""), tolower(names(classes)))
#  if(is.na(which))
#    stop(paste("No class resembling name", paste(parts[1:upto], collapse="")))

  if(!is.na(which))
    className <- names(classes)[which]
  else
    className <- paste(sapply(parts[1:upto], changeCapitalization), collapse="", sep="")


  if(capitalize == FALSE)
    return(className)

  other <- paste(sapply(parts[-c(1:upto)], changeCapitalization), collapse="")
  return(paste(changeCapitalization(className, FALSE), other, collapse="", sep=""))
}

setGtkClassCall <-
function(className, defs, variable)
{
#    if(missing(className)) {
#      className <- mapToClassName(name)
#    }

  setClass <- paste("\t class(", variable, ") <- c(",
                      paste("\"", getClassList(className, defs$objects), "\"", sep="", collapse=", "),
                      ")", sep="")

  setClass
}

getCType <-
  #
  # get the C type corresponding to the specified Defs type,
  # potentially looking in the enumerations and flags to match
  # the type.
  # By default, this returns a pointer to the input type!
  # One must handle all types for which this is not appropriate.
  #
  #  Convert to a table!

  # Don't think this is necessary anymore - all types in defs are actual c types now
  #
function(type, defs)
{
 if(is.list(type))
   type = type[[1]]

 type <- type[1]

 if(type == "gboolean")
   str <- "Rboolean"
 else if (type == "uint")
   str <- "unsigned int"
  else if (type == "static_string")
   str <- "string"
 else if (type == "string" || type == "int" || type == "double" || type == "float")
   str <- type
 else if(isEnum(type, defs) || isFlag(type, defs)) {
   str <- type
 } else if(type == "GdkAtom") {
   str  <- "GdkAtom"
 } else if(type == "ulong") {
   str <- "gulong"
 } else if(type == "time_t") {
   str <- type
 } else if(type == "string[]") {
   str <- "string *"
 } else if(type == "guint" || type == "gint" || type == "guint32") {
   str <- type
 } else if(type == "string[]") {
   str <- "string *"
 } else if(is.character(type) && length(grep("Func$", type)) > 0) {
   str <- type
 } else {
   str <- paste(type, "*")
 }

 str
}

}
