\name{getEnumCheckDecl}
\alias{getEnumCheckDecl}
\title{Declaration for Enumeration Validation Routine}
\description{
  Generate the C code for the declaration of the C routine
  that checks the value of an S object is valid for a
  particular enumeration type.
  This declaration is put in the \code{package}Enum.h
  file where \code{package}  is the argument to the
  \code{\link{generateCodeFiles}}.
}
\usage{
getEnumCheckDecl(name)
}
\arguments{
  \item{name}{the name of the
    enumeration type created by calling
    \code{\link{getEnumCRoutineName}}.}
}
\value{
  A simple string of the form
  \code{USER_OBJECT_ <name>(USER_OBJECT_)}.
}

\references{
  \url{http://www.omegahat.net/RGtk},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}
\seealso{
 \code{\link{getEnumCheckDecl}}
}

\examples{
}
\keyword{programming}
