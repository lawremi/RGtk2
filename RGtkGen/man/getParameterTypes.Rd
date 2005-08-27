\name{getParameterTypes}
\alias{getParameterTypes}
\alias{getAllTypes}
\title{Names of the parameter and return types for a C routine}
\description{
  Not certain these are ever used.  

  \code{getParameterTypes} retuns the names of C types of the parameters and return value
  of a C routine defined in the .defs files.

  \code{getAllTypes} returns the names of all the different
  C types from the  C routines and the classes defined in the
  symbolic definitions.
}
\usage{
getParameterTypes(x)
getAllTypes(defs)
}
\arguments{
  \item{x}{the description of the C routine/function of interest
    in the definitions read from the .defs files.
    This is an object of class \code{FunctionDef}.
  }
  \item{defs}{the collection of all the definitions read from the .defs files.}
}
\value{
  A character vector giving the names of the C types
  of the return value and the parameters of the C routine,
  in that order.
}
\references{\url{http://www.omegahat.org/RGtk},
  \url{http://www.omegahat.org/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{

}

\examples{

}
\keyword{programming}

