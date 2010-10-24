\alias{cairoSetMiterLimit}
\name{cairoSetMiterLimit}
\title{cairoSetMiterLimit}
\description{Sets the current miter limit within the cairo context.}
\usage{cairoSetMiterLimit(cr, limit)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{limit}}{[numeric]  miter limit to set}
}
\details{If the current line join style is set to \code{CAIRO_LINE_JOIN_MITER}
(see \code{\link{cairoSetLineJoin}}), the miter limit is used to determine
whether the lines should be joined with a bevel instead of a miter.
Cairo divides the length of the miter by the line width.
If the result is greater than the miter limit, the style is
converted to a bevel.
  
As with the other stroke parameters, the current line miter limit is
examined by \code{\link{cairoStroke}}, \code{\link{cairoStrokeExtents}}, and
\code{cairoStrokeToPath()}, but does not have any effect during path
construction.
  
The default miter limit value is 10.0, which will convert joins
with interior angles less than 11 degrees to bevels instead of
miters. For reference, a miter limit of 2.0 makes the miter cutoff
at 60 degrees, and a miter limit of 1.414 makes the cutoff at 90
degrees.
  
A miter limit for a desired angle can be computed as: miter limit =
1/sin(angle/2)  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
