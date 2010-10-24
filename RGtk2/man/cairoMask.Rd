\alias{cairoMask}
\name{cairoMask}
\title{cairoMask}
\description{A drawing operator that paints the current source
using the alpha channel of \code{pattern} as a mask. (Opaque
areas of \code{pattern} are painted with the source, transparent
areas are not painted.)}
\usage{cairoMask(cr, pattern)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
