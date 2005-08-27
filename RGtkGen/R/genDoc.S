generateInternalRd <-
function(defs, package, objectNames, dir = ".")
{
  f <- file(paste(dir, "man", paste(package,"-", "internal.Rd", sep=""), sep=.Platform$file.sep), "w")
  cat("\\name{", package, "-internal}\n", sep="", file=f)

  if(!missing(objectNames)) {
    cat("Writing internal help for", length(objectNames), "objects\n")    
    for(i in objectNames) {    
     cat("\\alias{", i, "}\n", sep="", file = f)
    }
  } else  {
    for(i in names(defs$functions)) {
      cat("\\alias{", toCapPhraseName(i, TRUE, classNames = names(defs$classes)), "}\n", sep="", file = f)
    }
  }

  cat("\\title{Automatically generated S functions for bindings to the ", package, "library}\n", file = f)
  cat("\\description{Automatically generated S functions for bindings to the ", package, "library}\n", file = f)
  cat("\\keyword{internal}", file=f)
  cat("\n\n", file = f)
  close(f)

}  
