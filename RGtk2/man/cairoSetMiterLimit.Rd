\alias{cairoSetMiterLimit}
\name{cairoSetMiterLimit}
\title{cairoSetMiterLimit}
\description{Sets the current miter limit within the cairo context.}
\usage{cairoSetMiterLimit(cr, limit)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{limit}}{[numeric]  miter limit to set}
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
construction.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
