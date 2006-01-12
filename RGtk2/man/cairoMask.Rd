\alias{cairoMask}
\name{cairoMask}
\title{cairoMask}
\description{A drawing operator that paints the current source
using the alpha channel of \code{pattern} as a mask. (Opaque
areas of \code{mask} are painted with the source, transparent
areas are not painted.)}
\usage{cairoMask(cr, pattern)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}
\item{\code{pattern}}{[\code{\link{cairo_pattern_t}}]  a \code{\link{cairo_pattern_t}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
