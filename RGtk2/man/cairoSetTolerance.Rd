\alias{cairoSetTolerance}
\name{cairoSetTolerance}
\title{cairoSetTolerance}
\description{Sets the tolerance used when converting paths into trapezoids.
Curved segments of the path will be subdivided until the maximum
deviation between the original path and the polygonal approximation
is less than \code{tolerance}. The default value is 0.1. A larger
value will give better performance, a smaller value, better
appearance. (Reducing the value from the default value of 0.1
is unlikely to improve appearance significantly.)  The accuracy of paths
within Cairo is limited by the precision of its internal arithmetic, and
the prescribed \code{tolerance} is restricted to the smallest
representable internal value.}
\usage{cairoSetTolerance(cr, tolerance)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{tolerance}}{[numeric]  the tolerance, in device units (typically pixels)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
