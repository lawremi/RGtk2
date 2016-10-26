\name{getDefaultSArgs}
\alias{getDefaultSArgs}
\alias{getSArgs}
\title{Code/Variable generators for parameters in generated S functions}
\description{
  These functions relate to generating the parameters
  in S functions that interface to the C routines in the
  .defs objects.
  \code{getSArgs} returns the names of the S parameters.
  \code{getDefaultSArgs} returns the code for
  default values for each of the arguments (in the form \code{= value}).
}
\usage{
getDefaultSArgs(params, defs)
getSArgs(params)
}
\arguments{
  \item{params}{the parameters from the description of the C routine}
  \item{defs}{the top-level description of all of elements described in
    the .defs file, i.e. classes, enums, flags, etc.
    These are used to determine the type of the parameter
    and the appropriate default values and
   code to coerce S values to the appropriate type.}
}

\value{
  A character vector  whose length is equal to the
  number of parameters in the C routine (given by \code{params}).

  For \code{getSArgs}, this elements of the vector are the
  names of the parameters.

  For \code{getDefaultSArgs}, the elements are the S code
  defining the default value or simply the empty string ("").
  The names of the elements are the names of the parameters.
}
\references{\url{http://www.omegahat.net/RGtk},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
  \code{\link{collapseConstructors}}
  \code{\link{genRCode}}
}

\examples{

}
\keyword{programming}
