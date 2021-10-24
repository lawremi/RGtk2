\name{generateCodeFiles}
\alias{generateCodeFiles}
\title{ ~~function to do ... ~~ }
\description{
  This is the top-level entry point
  for the read-generate process which
  creates S- and C-language bindings
  for Gtk-based libraries from
  symbolic IDL-like descriptions
  of classes, routines, enumerations, etc.
  This reads the description (or .defs) files
  and generates S and C code to interfae to the
  code described within them.
}
\usage{
generateCodeFiles(..., classNames = NULL, dir = c(C="/tmp", S="tmp"),
                   verbose = FALSE, constructorFile = "constructors.R",
                   package = "RGtk", allDefs = NULL)
}
\arguments{
  \item{\dots}{a collection of .defs files  (with or without their
    .defs extension) from which we read the description of the
   classes, routines, enumerations, etc.}
  \item{classNames}{}
  \item{dir}{usually, a named-character vector giving the names of the
    directories in which to create the C and S code.
    The names of the elements must be "C" and "S",
    respectively.
    If one requires finer control over the names of and where the files
    are located (e.g. to place the different C files in different
    directories), you can supply a function that is given the
    base name of the file to create and returns the fully
    qualified file name. 
  }
  \item{verbose}{a logical value controlling whether information is
    written
    to the console about
    how the processing and generating of the code is being done.
    \code{TRUE} means provide information to the ``user'', i.e. the
    caller   of this function.}
  \item{constructorFile}{the name of the file in which to place the
    constructor functions.}
  \item{package}{the name of the package in which this generated code
    will be located. This is used in the code that makes
     calls to \code{\link{.C}}
    and \code{\link{.Call}} (actually \code{\link[RGtk]{.GtkCall}})
    functions in the generated code.
  }
  \item{allDefs}{any previously existing definitions (e.g. the base Gtk
    defs)  which are used to locate classes, enumerations,
    etc. referenced in these Gtk library definitions.
    This is mainly used when we are processing defs files outside of the
    core  Gtk library but need some of the definitions from the latter.}
}
\details{
  This uses Python code to read the .defs files
  and uses the \url{http://www.omegahat.net/RSPython}
  package to do this from R and return the results
  (as recursive named lists of character strings)
  to R where we then generate the code.
}
\value{
  A list giving the definitions read from the different
  .defs files
  and
  \item{allDefs}{the class, function, enumeration, flag and box
    definitions from the .defs files}
  \item{klasses}{a list with an element for each of the .defs files.
     Each element is character vector giving the names of the classes within}
}

\references{
 \url{http://www.omegahat.net/RGtk/}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
  \code{\link{genCode}}
  \code{\link{getDefs}}
  \code{\link{genLoadClassesCode}}
}

\examples{

}
\keyword{programming}
