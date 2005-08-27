source("globals.R")
source("pyGen.R")
# source("cons.S")
# source("load.S")

genCode <-
#
#
function(defs = getDefs(), filePrefix="gtk", dir=c("C"="/tmp", "S"="/tmp"), existingDefs = NULL, verbose=FALSE,
          libName = filePrefix, package = "RGtk")
{

 toCppSymbol <- function(name) {
  toupper(gsub(.Platform$file.sep, "_", name))
 }

 if(is.function(dir))
   getFileName <- dir
 else
   getFileName <- function(type) {
                   d <- ifelse(length(grep("\\\.[SR]$", type)), dir["S"], dir["C"])

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

 cat('#include "utils.h"\n#include "conversion.h"\n#include "gobject.h"\n#include "',
    filePrefix,'Funcs.h"\n#include "userfuncs.h"\n\n\n', file=CFuncs, sep="")
 cat("#include \"", package, ".h\"\n\n", file = CFuncs, sep = "")

 cat("#ifndef S_", toCppSymbol(filePrefix), "_FUNCS_H\n#define S_", toCppSymbol(filePrefix),"_FUNCS_H\n", file=CHeader, sep="")


 varargs <- character(0)
 badTypeList <- character(0)
 badFuncList <- character(0)
 for(i in getNonDiscardedNames("functions")) {
   fun <- defs$functions[[i]]
   if(fun$varargs == '1') { # we can handle out-params but not vararg funcs
       varargs <- c(varargs, i)
       next
   }

   allTypes <- c(fun$return)
   if (!isPropertyConstructor(fun))
       allTypes <- c(allTypes, getParamTypes(fun$parameters))
   if (isMethod(fun))
       allTypes <- c(allTypes, fun$ofobject)
   badType <- which(baseType(allTypes, complete=T) %in% badTypes)
   if (length(badType)) {
       badTypeList <- c(badTypeList, paste(fun$name, "(", paste(allTypes[badType],collapse=", "), ")"))
       next
   }

   if(verbose)
     cat("processing function", i, "\n")

   if (fun$name %in% badRFuncs) {
       badFuncList <- c(badFuncList, fun$name)
   } else {
	   funName = toCapPhraseName(i, TRUE, classNames = c(names(allDefs$interfaces),names(allDefs$objects)))
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

 cat("#endif /* S_GTK_FUNCS_H */ \n", file=CHeader)
 close(CHeader)

 if(length(varargs) > 0)
   warning(paste("Varargs functions:", paste(varargs,collapse=", "), "not handled"))

 if(length(badFuncList) > 0)
   warning(paste("Bad functions:", paste(badFuncList,collapse=", "), "not handled"))

 if(length(badTypeList) > 0)
   warning(paste("Functions with bad types:", paste(badTypeList,collapse=", "), "not handled"))

 UserCFuncs <- file(getFileName("UserFuncs.c"))
 UserCHeader <- file(getFileName("UserFuncs.h"))
 open(UserCFuncs,"w")
 open(UserCHeader,"w")

 cat("#include \"", filePrefix, "UserFuncs.h\"\n", file=UserCFuncs, sep="")
 cat("#include \"", package, ".h\"\n\n", file = UserCFuncs, sep = "")

 cat("#include \"", package, ".h\"\n\n", file = UserCHeader, sep = "")

 for(i in getNonDiscardedNames("userfunctions")) {
     if(verbose)
         cat("processing USER function", i, "\n")
     tmp <- genUserFunctionCode(defs$userfunctions[[i]], allDefs)
     cat(tmp$code, "\n\n", file=UserCFuncs)
     cat(tmp$decl, "\n\n", file=UserCHeader)
 }
 close(UserCFuncs)
 close(UserCHeader)

  # Now do the accessors to the

 CAccessors <- file(getFileName("Accessors.c"))
 RAccessors <- file(getFileName("Accessors.R"))

  open(CAccessors, "w")
  open(RAccessors, "w")

  cat('#include "conversion.h"\n\n\n', file=CAccessors, sep="")
  cat("#include \"", package, ".h\"\n\n", file = CAccessors, sep = "")

  accessors <- c(defs$objects[getNonDiscardedNames("objects")], defs$boxes[getNonDiscardedNames("boxes")],
                    defs$pointers[getNonDiscardedNames("pointers")])
  trans <- which(names(accessors) %in% transparentTypes)
  if (length(trans) > 0)
	  accessors <- accessors[-trans]
  
  for(i in genFieldAccessors(accessors, allDefs)) {
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
    # a) removing the new for the New being appended to the class name constructor.
    # Note the name to get this to be the final name so it is sourced() last
    # if the S files are listed by named.

    # not worrying about this for now - mikel
#  tmp = outputConstructors(defs, getFileName("zConstructors.R"), libName)
#  definedRFuncs = c(definedRFuncs, tmp$funcNames, tmp$copies)

  list(varargs = varargs, definedRFuncs = definedRFuncs)
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
          verbose=FALSE, constructorFile = "constructors.R", package = "RGtk", allDefs = NULL)
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
  defNames <- sapply(defNames, function(x) gsub("\\\.defs", "", basename(x)))

#  defFileNames <- paste(defNames, "defs", sep=".")
  if(is.null(classNames))
    classNames <- defNames

  klasses <- list()
  definedRFuncs = character(0)

  for(i in 1:length(defFileNames)) {
   if(verbose)
     print(defFileNames[i])

    # read the definitions using R and Python.
   defs <- getDefs(defFileNames[i])
    # Now generate the .c, .h and .R files for the classes, routines, enums, etc.
    # in this library.
   tmp = genCode(defs, basename(defNames[i]), dir=dir, allDefs, verbose = verbose, libName = classNames[i], package = package)
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



##########################
# DEPRECATED STUFF
##########################
if(FALSE) {
outputConstructors <-
function(defs, constructorFile, prefix)
{
  cons <- collapseConstructors(, defs)

  if(inherits(constructorFile, "connection")) {
    constructors <- constructorFile
  } else {
    constructors <- file(constructorFile)
    open(constructors, "w")
    on.exit(close(constructors))
  }

   # The cons object has two types of constructors: a) definitions in the form of S code,
   # and b)
  for(i in cons$defs) {
    cat(i, "\n\n", file = constructors)
  }

  if(length(cons$copies) > 0)
    cat(paste(cons$copies, "<-", paste(cons$copies, "New", sep="")), "\n\n", sep="\n", file = constructors)

  cat("\n\n", file = constructors)

  loadClasses <- defs$objects
  rms <- c(grep("^Gdk", names(defs$objects)), grep("^GtkWindow", names(defs$objects)))
  if(any(is.na(rms)))
    loadClasses <- loadClasses[-rms[!is.na(rms)]]

  if(length(loadClasses))
    klassNames <- paste("\"", sort(names(loadClasses)), "\"", collapse=", ", sep="")
  else
    klassNames <- ""

  varName <- paste(".", prefix, "Classes", sep ="")
  cat(varName, " <- c(", klassNames, ")\n\n", file = constructors)

  invisible(cons)
}


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
