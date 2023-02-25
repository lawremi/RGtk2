toCppSymbol <- function(name) {
  toupper(gsub(.Platform$file.sep, "_", name))
}
 
genCode <-
#
#
function(defs = getDefs(), filePrefix="gtk", dir=c("C"="/tmp", "S"="/tmp"), 
         existingDefs = NULL, constructors = TRUE, verbose=FALSE,
         package = "RGtk2")
{

  # get "bad" types for a function
  getBadTypes <- function(fun)
  {
    allTypes <- fun$return
    if (!isPropertyConstructor(fun))
        allTypes <- c(allTypes, getParamTypes(fun$parameters))
    if (isMethod(fun))
        allTypes <- c(allTypes, fun$ofobject)
    allTypes[baseType(allTypes, complete=T) %in% badTypes]
  }

 if(is.function(dir))
   getFileName <- dir
 else
   getFileName <- function(type) {
                   d <- ifelse(length(grep("\\.[SR]$", type)), dir["S"], dir["C"])

                    # Should check it is a directory also. Is file.info() portable.
                   if(!file.exists(d)) {
                     cat("Creating ", d, "\n")
                     dir.create(d)
                   }
                   else if(!file.info(d)$isdir)
                     stop(d, " is not a directory")

                   localDir <- paste(d, filePrefix, sep=.Platform$file.sep)

                   paste(localDir, type, sep="")
                }

 getNonDiscardedNames <- function(category) {
     if(!is.null(existingDefs)) {
       if(any(category == c("enums", "flags")))
          existingNames <- c( names(existingDefs[["flags"]]),  names(existingDefs[["enums"]]))
       else
          existingNames <- names(existingDefs[[category]])

       which <- is.na(match(names(defs[[category]]), existingNames))
       funNames <- names(defs[[category]])[which]
     } else
       funNames <- names(defs[[category]])

     funNames
   }

 allDefs <- mergeDefs(defs, existingDefs)


 #enumC  <- file(getFileName("Enum.c"))
 #enumH  <- file(getFileName("Enum.h"))
 enumRDefs <- file(getFileName("EnumDefs.R"))
 #enumRFuncs <- file(getFileName("EnumFuncs.R"))

 #open(enumC, "w")
 #open(enumH, "w")
 open(enumRDefs, "w")
 #open(enumRFuncs, "w")

 #cat("#ifndef S_", toCppSymbol(filePrefix),"_ENUM_H\n#define S_", toCppSymbol(filePrefix), "_ENUM_H\n", file=enumH,sep="")
 #cat('#include "utils.h"\n#include "',filePrefix,'Enum.h"\n\n', file = enumC, sep="")
 #cat("#include \"", package, ".h\"\n\n", file = enumC, sep = "")

 if(verbose) {
  cat("New Enums:\n")
  print(getNonDiscardedNames("enums"))
 }

 definedRFuncs = character()

 for(i in getNonDiscardedNames("enums")) {
  if (i %in% badEnums)
      next
  tmp <- genCEnum(defs$enums[[i]], i, isEnum = TRUE)
  #cat(tmp$cCode,"\n\n", file = enumC)
  cat(tmp$rvector, "\n\n", file=enumRDefs)
  #cat(tmp$func, "\n\n", file=enumRFuncs)
  #cat(tmp$declaration, "\n\n", file=enumH)
  definedRFuncs = c(definedRFuncs, tmp$robjectNames)
 }

 if(verbose)
   cat("Finished enums\n")

 if(verbose) {
  cat("New flags:\n")
  print(getNonDiscardedNames("flags"))
 }

 for(i in getNonDiscardedNames("flags")) {
  if(i %in% badEnums)
    next
  tmp <- genCEnum(defs$flags[[i]], i, isEnum = FALSE)
  #cat(tmp$cCode,"\n\n", file = enumC)
  cat(tmp$rvector, "\n\n", file=enumRDefs)
  #cat(tmp$func, "\n\n", file=enumRFuncs)
  #cat(tmp$declaration, "\n\n", file=enumH)
  definedRFuncs = c(definedRFuncs, tmp$robjectNames)
 }

  if(verbose)
   cat("Finished flags\n")

 #close(enumC)
 close(enumRDefs)
 #close(enumRFuncs)
 #cat("#endif /* */\n", file=enumH)
 #close(enumH)

 CFuncs <- file(getFileName("Funcs.c"))
 CHeader <- file(getFileName("Funcs.h"))
 RFuncs <- file(getFileName("Funcs.R"))
 open(CFuncs, "w")
 open(CHeader, "w")
 open(RFuncs, "w")

 # include custom (package-specific) header, plus gobject.h (just to be safe)
 common_includes <- c('#include <RGtk2/gobject.h>\n#include <', 
  file.path(package, filePrefix), '.h>\n\n')
  
 # the generated wrapper file has a header that declares the wrappers
 cat(common_includes, '#include "', filePrefix,'Funcs.h"\n\n\n', file=CFuncs, sep="")
 
 cat("#ifndef S_", toCppSymbol(filePrefix), "_FUNCS_H\n#define S_", 
  toCppSymbol(filePrefix),"_FUNCS_H\n", file=CHeader, sep="")
 cat('#include <RGtk2/RSCommon.h>\n\n', file = CHeader, sep = "")

 varargs <- character(0)
 badTypeList <- character(0)
 badFuncList <- character(0)

  classNames <- c(names(allDefs$interfaces),names(allDefs$objects))
  classNames <- classNames[order(nchar(classNames))]
  classCaps <- gsub("[a-z]", "", classNames)
  classNames <- classNames[order(nchar(classCaps), decreasing=TRUE)]

  
 for(i in getNonDiscardedNames("functions")) {
   fun <- defs$functions[[i]]
   if(fun$varargs == '1') { # we can handle out-params but not vararg funcs
       varargs <- c(varargs, i)
       next
   }

   bad_types <- getBadTypes(fun)
   if (length(bad_types)) {
      badTypeList <- c(badTypeList, paste(fun$name, "(", paste(bad_types,collapse=", "), ")"))
      next
   }

   if(verbose)
     cat("processing function", i, "\n")

   if (fun$name %in% badRFuncs) {
       badFuncList <- c(badFuncList, fun$name)
   } else {
	   funName = toCapPhraseName(i, TRUE, classNames = classNames)
	   rcode <- genRCode(fun, allDefs, i, funName, package=package)
	   definedRFuncs = c(definedRFuncs, funName)
	   cat(rcode, "\n\n", file=RFuncs)
   }
   if (fun$name %in% badCFuncs) {
       badFuncList <- c(badFuncList, fun$name)
   } else {
	   tmp <- genCCode(fun, allDefs, i)
	   cat(tmp$code, "\n\n", file=CFuncs)
	   cat(tmp$decl, "\n\n", file=CHeader)
   }
 }

 close(CFuncs)
 close(RFuncs)

 cat("#endif\n", file=CHeader)
 close(CHeader)

 if(length(varargs) > 0)
   warning(paste("Varargs functions:", paste(varargs,collapse=", "), "not handled"))

 if(length(badFuncList) > 0)
   warning(paste("Bad functions:", paste(badFuncList,collapse=", "), "not handled"))

 if(length(badTypeList) > 0)
   warning(paste("Functions with bad types:", paste(badTypeList,collapse=", "), "not handled"))

 UserCFuncs <- file(getFileName("UserFuncs.c"))
 UserCHeader <- file(getFileName("UserFuncs.h"))
 UserCExports <- file(getFileName("UserFuncExports.c"))
 UserCImports <- file(getFileName("UserFuncImports.c"))
 
 open(UserCFuncs,"w")
 open(UserCHeader,"w")
 open(UserCExports, "w")
 open(UserCImports, "w")

 cat("#include \"", file.path(package, filePrefix), "UserFuncs.h\"\n", file=UserCFuncs, sep="")
 
 cat("#ifndef S_", toCppSymbol(filePrefix), "_USERFUNCS_H\n#define S_", 
  toCppSymbol(filePrefix),"_USERFUNCS_H\n", file=UserCHeader, sep="")
 cat(common_includes, "\n", file = UserCHeader, sep = "")

 for(i in getNonDiscardedNames("userfunctions")) {
     if(verbose)
         cat("processing USER function", i, "\n")
     tmp <- genUserFunctionCode(defs$userfunctions[[i]], allDefs, package = package)
     cat(tmp$code, "\n\n", file=UserCFuncs)
     cat(tmp$decl, "\n\n", file=UserCHeader)
     cat(tmp$export, "\n", file=UserCExports)
     cat(tmp$import, "\n\n", file=UserCImports)
 }
 
 cat("#endif\n", file=UserCHeader)
 
 close(UserCFuncs)
 close(UserCHeader)
 close(UserCExports)
 close(UserCImports)

 # GObject class wrappers
 
 if (length(defs$virtuals)) {
   ClassCFuncs <- file(getFileName("Classes.c"))
   open(ClassCFuncs,"w")
   ClassCHeader <- file(getFileName("Classes.h"))
   open(ClassCHeader,"w")
   ClassCExports <- file(getFileName("ClassExports.c"))
   open(ClassCExports,"w")
   ClassCImports <- file(getFileName("ClassImports.c"))
   open(ClassCImports,"w")
   
   cat('#include "', file.path(package, filePrefix), 'Classes.h"\n', file=ClassCFuncs, sep="")
   
   cat("#ifndef S_", toCppSymbol(filePrefix), "_CLASSES_H\n#define S_", 
    toCppSymbol(filePrefix),"_CLASSES_H\n", file=ClassCHeader, sep="")
   cat(common_includes, file = ClassCHeader, sep = "")
   
   virtual_classes <- sapply(defs$virtuals, function(virtual) virtual$ofobject)
   
   write_classes <- function(type)
   {
     class_names <- getNonDiscardedNames(paste(type, "s", sep=""))
     class_names <- class_names[!(class_names %in% finalClasses)]
     for(i in class_names) {
       if(verbose)
           cat("processing ", toupper(type), ": ", i, "\n")
       virtuals <- defs$virtuals[virtual_classes == i]
       virtuals <- virtuals[as.logical(sapply(virtuals, function(virtual) 
        length(getBadTypes(virtual)) == 0))]
       gen <- genCClass(i, virtuals, allDefs, package)
       cat(gen$decl, "\n", file=ClassCHeader)
       cat(gen$code, "\n\n", file=ClassCFuncs)
       cat(gen$export, "\n", file=ClassCExports)
       cat(gen$import, "\n\n", file=ClassCImports)
     }
   }
   
   write_classes("object")
   write_classes("interface")
   
   cat("#endif\n", file=ClassCHeader)
   
   close(ClassCFuncs)
   close(ClassCHeader)
   close(ClassCImports)
   close(ClassCExports)
 }
 
 if (length(defs$virtuals)) {
   RVirtuals <- file(getFileName("Virtuals.R"))
   open(RVirtuals,"w")
   virtuals <- defs$virtuals[getNonDiscardedNames("virtuals")]
   virtuals <- virtuals[sapply(virtuals, function(virtual) length(getBadTypes(virtual)) == 0)]
   cat(genRVirtuals(names(virtuals), allDefs, package), file=RVirtuals)
   close(RVirtuals)
 }
 
  # Now do field accessors

 CAccessors <- file(getFileName("Accessors.c"))
 RAccessors <- file(getFileName("Accessors.R"))

  open(CAccessors, "w")
  open(RAccessors, "w")

  cat(common_includes, file = CAccessors, sep = "")

  accessors <- c(defs$objects[getNonDiscardedNames("objects")], defs$boxes[getNonDiscardedNames("boxes")],
                    defs$pointers[getNonDiscardedNames("pointers")])
  trans <- which(names(accessors) %in% transparentTypes)
  if (length(trans) > 0)
	  accessors <- accessors[-trans]
  
  for(i in genFieldAccessors(accessors, allDefs, package)) {
   for(j in i) {
     definedRFuncs = c(definedRFuncs, j$rfuncName)
     cat(j$rcode, "\n", file=RAccessors)
     cat(j$ccode, "\n", file=CAccessors)
   }
  }

  close(CAccessors)
  close(RAccessors)

    # At this point, we have created all the basic code. We now start
    # prettying it up by
    # a) creating constructor wrappers, if specified
    
  if (constructors)
    outputConstructors(defs, getFileName("zConstructors.R"))
  
	definedRFuncs = c(definedRFuncs, sapply(names(defs$objects), changeCapitalization, FALSE))

  list(varargs = varargs, definedRFuncs = definedRFuncs)
}

# generate code for exporting (and importing) the functions in a defs file
# any exports/imports for user-funcs or classes for the API are #included
genExports <-
function(api, out_dir, defs_dir, deps, package = "RGtk2")
{
  getFileName <- function(name) file.path(out_dir, paste(api, name, sep=""))
  
  defs <- getDefs(file.path(defs_dir, paste(api, "Exports.defs", sep="")))
  
  exportFile <- file(getFileName("Exports.c"))
  importFile <- file(getFileName("Imports.c"))
  
  open(importFile, "w")
  open(exportFile, "w")
  
  cat("#ifndef S_", toCppSymbol(api), "_IMPORTS_C\n#define S_", 
    toCppSymbol(api),"_IMPORTS_C\n", file=importFile, sep="")
  
  includeFile <- function(filename) paste("#include <", filename, ">\n\n", sep="")
  
  cat(includeFile(paste(file.path(package, api), "h", sep=".")), file = importFile)
  
  sapply(deps, function(dep) {
    cat(includeFile(paste(dep, "Imports.c", sep="")), file = importFile)
  })
  
  includeSubFile <- function(subFile, outFile, subDir = NULL) {
    subFile <- getFileName(subFile)
    subOut <- file.path(subDir, basename(subFile))
    if (file.exists(subFile))
      cat(includeFile(subOut), sep = "", file = outFile)
  }
  sapply(c("UserFunc", "Class"), function(sub) {
    includeSubFile(paste(sub, "Exports.c", sep = ""), exportFile, "exports")
    includeSubFile(paste(sub, "Imports.c", sep = ""), importFile, package)
  })
  
  sapply(defs$functions, function(fun) {
    param_types <- getParamTypes(fun$parameters)
    param_names <- names(fun$parameters)
    ret_type <- toValidType(fun$return)
    export <- exportFunc(fun, fun$name, param_types, param_names, package)
    import <- importFunc(fun, fun$name, ret_type, param_types, param_names, package)
    cat(import, "\n\n", file = importFile)
    cat(export, "\n", file = exportFile)
  })
  
  cat("#endif\n", file=importFile)
  
  close(importFile)
  close(exportFile)
}

generateCodeFiles <-
  #
  # This is the main entry point called from the makefile to generate the interface
  # stubs. It is called with the names of the different .defs files (without the `.defs' extension).
  #
  # It loops over these file names and processes each one incrementally. We merge the definitions
  # into a global set so that enums, classes, types, etc. are available to the next set.
  # The order is therefore important and the most generic libraries (e.g. Gdk and Gtk)
  # should be specified before dependent libraries such as gtk-extra, gtkHTML.
  # In this way, we are building a single inter-connected bundle which is typically
  # not broken up at load/run time.
  # However, we do make an effort to allow the configuration of the resulting package
  # work when libraries such as gtkextra or gtkHTML are not available and remove that
  # code during the configuration.
  #
function(..., classNames = NULL, dir=c("C"="/tmp", "S" = "/tmp"),
         constructors = FALSE, verbose=FALSE, package = "RGtk2", allDefs = NULL)
{
   # allDefs becomes the incrementally cumulated collection of definitions across the files.
  if(missing(allDefs)) {
    data(GtkDefs)
    allDefs <- GtkDefs
  }

  if(!is.function(dir)) {
   if(length(dir) == 1)
     dir <- rep(dir, 2)

   if(is.null(names(dir)))
     names(dir)[1:2] <- c("C", "S")
 }

  defNames <- c(...)
  defFileNames <- sapply(defNames, function(x) {
                        if(file.exists(x))
                          return(x)

                        x <- paste(x, ".defs", sep="")

                        if(!file.exists(x))
                          stop("No defs file named ", x)

                        x
                     })
    defNames <- sub("-.*", "", tools::file_path_sans_ext(basename(x)))

#  defFileNames <- paste(defNames, "defs", sep=".")
  if(is.null(classNames))
    classNames <- defNames

  klasses <- list()
  definedRFuncs = character(0)

    ### TODO: support GIR with something like this
    ## db <- list()
    ## for(defFileName in defFileNames) {
    ##     db <- parseGIR(defFileName, db)
    ## }
    ## allDefs <- Reduce(mergeDefs, db)
    ## for(defName in defNames) {
    ##     tmp <- genCode(db[[defName]], tolower(defName), dir = dir, allDefs,
    ##                    constructors = constructors, verbose = verbose,
    ##                    libName = defName, package = package)
    ##     definedRFuncs <- c(definedRFuncs, tmp$definedRFuncs)
    ##     klasses[[dbi$name]] <- names(defs$objects)
    ## }
    
  for(i in 1:length(defFileNames)) {
   if(verbose)
     print(defFileNames[i])

    # read the definitions using R and Python.
   defs <- getDefs(defFileNames[i])
    # Now generate the .c, .h and .R files for the classes, routines, enums, etc.
    # in this library.
   tmp <- genCode(defs, basename(defNames[i]), dir=dir, allDefs,
                  constructors = constructors, verbose = verbose,
                  package = package)
   definedRFuncs = c(definedRFuncs, tmp$definedRFuncs)

   if(i > 1) {
     allDefs <- mergeDefs(defs, allDefs)
   } else
     allDefs <- defs

    # store the names of the classes for this library in a separate list.
   klasses[[classNames[i]]] <- names(defs$objects)
  }

  #loadClasses <- allDefs$classes[-c( grep("^Gdk", names(allDefs$classes)), grep("^GtkWindow", names(allDefs$classes)))]
    # Now create a C file that loads all the classes. Not really needed.
    # Can call .C("gtk_<type>_get_type") manually. So this is only
    # necessary if there is no way to get these symbols on some systems.
  #fileName <- ifelse(is.function(dir), dir("load.c"), paste(dir["C"], "load.c", sep=.Platform$file.sep))
  #genLoadClassesCode(loadClasses, fileName)

#  cat(".GtkClasses <- c(",
#         paste("\"", sort(names(loadClasses)), "\"", collapse=", ", sep=""),
#      ")\n\n", file = constructors)

  invisible(list(allDefs = allDefs, klasses = klasses, definedRFuncs = definedRFuncs))
}

outputConstructors <-
function(defs, constructorFile)
{
  cons <- collapseConstructors(, defs)

  if(inherits(constructorFile, "connection")) {
    constructors <- constructorFile
  } else {
    constructors <- file(constructorFile)
    open(constructors, "w")
    on.exit(close(constructors))
  }

   # write out the constructors
  for(i in cons$defs) {
    cat(i, file = constructors)
  }

  invisible(cons)
}

##########################
# DEPRECATED STUFF
##########################
if(FALSE) {
createRegistrationTables =
function(symbols, classes, out = NULL)
{
  str = "static const R_CMethodDef cMethods[] = {"
  entries = character(0)

  classSymbols = c(paste(collapseClassName(classes), "_get_type", sep= ""), symbols)
  entries = paste("{", "\"", classSymbols, "\", ",  "(DL_FUNC) &", classSymbols, ", 0}", sep = "")

#  for(i in classSymbols) {
#       # convert the name from GtkButton to gtk_button_get_type
#     entries[i] = paste("{", "\"", name, "\", ",  "(DL_FUNC) &", name, ", 0}", sep = "")
#  }

  str = paste(str, paste(entries, collapse= ",\n"), ",\n  {NULL, NULL, NULL}\n};", sep = "\n")

  if(is.character(out)) {
    f = file(out, open = "w")
    on.exit(close(f))
    cat(str, "\n", file = f)
  }

  invisible(str)
}
}
