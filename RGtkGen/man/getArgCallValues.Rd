\name{getArgCallValues}
\alias{getArgCallValues}
\title{Compute how the C arguments are passed to the Gtk routine}
\description{
  This determines how the arguments in the C code
  for an S interface routine are passed to the underlying
  C routine in the definitions.
  Essentially this is only concerned with whether the
  parameter is defined as read-write and hence can
  return values also.
}
\usage{
getArgCallValues(params)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{params}{the collection of parameters for the underlying C
    routine. 
  }
}
\details{
  This adds a ``&'' before the name of any parameter
  that is declared read-write.
}
\value{
  A character vector whose elements give the form
  of the variable as it is passed to the C routine.
  Essentially this is either the variable name itself,
  or a reference to the variable name (i.e. \code{&x}).
}

\references{\url{http://www.omegahat.net/RGtk/},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}


\seealso{
 \code{\link{genCCode}}
}

\examples{

}
\keyword{programming}
