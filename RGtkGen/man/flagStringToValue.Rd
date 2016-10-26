\name{flagStringToValue}
\alias{flagStringToValue}
\title{Convert a Gtk-specification of enumeration or flag values to S}
\description{
  This splits a string giving an OR of different enumeration or flag
  values into a character vector of the different flag/enumeration
  values.
  This is used in the processing of the defs files and specifically
  the values of the default arguments.
  It is not part of the run-time, user-level RGtk interface.
}
\usage{
flagStringToValue(value)
}
\arguments{
  \item{value}{the string containing the ORed enumeration or flag value
    names,
  e.g. \code{"GTK_DEBUG_OBJECTS|GTK_DEBUG_MISC"}}
}

\value{
  A character vector giving the names of the different
  enumeration or flag values.
}
\references{
 \url{http://www.omegahat.net/RGtk}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
 \code{\link{getDefaultSArgs}}
}

\examples{

}
\keyword{programming}

