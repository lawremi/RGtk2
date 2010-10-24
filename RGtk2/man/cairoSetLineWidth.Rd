\alias{cairoSetLineWidth}
\name{cairoSetLineWidth}
\title{cairoSetLineWidth}
\description{Sets the current line width within the cairo context. The line
width value specifies the diameter of a pen that is circular in
user space, (though device-space pen may be an ellipse in general
due to scaling/shear/rotation of the CTM).}
\usage{cairoSetLineWidth(cr, width)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{width}}{[numeric]  a line width}
}
\details{Note: When the description above refers to user space and CTM it
refers to the user space and CTM in effect at the time of the
stroking operation, not the user space and CTM in effect at the
time of the call to \code{\link{cairoSetLineWidth}}. The simplest usage
makes both of these spaces identical. That is, if there is no
change to the CTM between a call to \code{\link{cairoSetLineWidth}} and the
stroking operation, then one can just pass user-space values to
\code{\link{cairoSetLineWidth}} and ignore this note.
  
As with the other stroke parameters, the current line width is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.
  
The default line width value is 2.0.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
