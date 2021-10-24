\name{genRCode}
\alias{genRCode}
\alias{genCCode}
\title{Generate S and C interface code for a C routine}
\description{
  These functions generate S and C code that interface to a
  Gtk function defined in the .defs files. These are the glue
  between the interactive S language and the raw Gtk method
  definined in the C library.
}
\usage{
genRCode(fun, defs, name, sname, className = NULL, package = "RGtk")
genCCode(fun, defs, name) 
}
\arguments{
  \item{fun}{the definition of the C routine for which we are generating
    either the S or C interface. This is an object of class
   \code{FunctionDef} that is created by reading the .defs files.}
  \item{defs}{the collection of all the definitions read from .defs
    files, including classes, functions, enumerations, etc.}
  \item{name}{the name of the C routine for which the interface is being generated.}
  \item{sname}{the name of the S function to create.}
  \item{className}{not used.}
  \item{package}{the name of the S package in which the S code will be
    located. This is used as the value of \code{PACKAGE} argument
    when calling the associated C interface routine via a \code{\link[RGtk]{.GtkCall}}.}
}
\value{
  \code{genRCode} returns string giving the full definition of the S function
  that interfaces to the C routine. This includes the assignment to the
  appropriate function name.
  \code{genCCode} returns a list with two elements:
  \item{code}{a string giving the full definition of the S-C interface routine
  that interfaces to the underlying C routine. This can be put into a .c
  file, compiled and accessed from S via \code{\link[RGtk]{.GtkCall}}.}
  \item{decl}{a string giving the declaration of the S-C interface routine
    which can be used in a header file (.h). This can be used
    when creating the registration table of routines in the generated package.}  
}

\references{
  \url{http://www.omegahat.net/RGtk/},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}


\seealso{
  \code{\link{genCode}}
  \code{\link{generateCodeFiles}}
}

\examples{

}
\keyword{programming}
