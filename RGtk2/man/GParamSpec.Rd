\name{GParamSpec}
\alias{GParamSpec}
\title{Parameter metadata in GObject}
\description{
\code{GParamSpec} is an object structure that encapsulates the metadata 
required to specify parameters, such as e.g. \code{GObject} properties.
}
\details{
As a transparent type, the base \code{GParamSpec} structure should be returned to 
R as a corresponding list; however, it is not possible to create meaningful 
\code{GParamSpec}s at this time with RGtk2. This functionality may be added in 
the future as we move towards allowing R widget implementations.
}
\author{Michael Lawrence}
\references{
\url{http://developer.gnome.org/doc/API/2.0/gobject/gobject-GParamSpec.html}
}
\keyword{interface}
\keyword{internal}

