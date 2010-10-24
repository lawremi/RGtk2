\alias{cairoSetAntialias}
\name{cairoSetAntialias}
\title{cairoSetAntialias}
\description{Set the antialiasing mode of the rasterizer used for drawing shapes.
This value is a hint, and a particular backend may or may not support
a particular value.  At the current time, no backend supports
\code{CAIRO_ANTIALIAS_SUBPIXEL} when drawing shapes.}
\usage{cairoSetAntialias(cr, antialias)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a \code{\link{Cairo}}}
\item{\verb{antialias}}{[\code{\link{CairoAntialias}}]  the new antialiasing mode}
}
\details{Note that this option does not affect text rendering, instead see
\code{\link{cairoFontOptionsSetAntialias}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
