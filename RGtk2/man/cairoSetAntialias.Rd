\alias{cairoSetAntialias}
\name{cairoSetAntialias}
\title{cairoSetAntialias}
\description{Set the antialiasing mode of the rasterizer used for drawing shapes.
This value is a hint, and a particular backend may or may not support
a particular value.  At the current time, no backend supports
\code{CAIRO_ANTIALIAS_SUBPIXEL} when drawing shapes.}
\usage{cairoSetAntialias(cr, antialias)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{antialias}}{[\code{\link{cairo_antialias_t}}]  the new antialiasing mode}
}
\details{Note that this option does not affect text rendering, instead see
\code{\link{cairoFontOptionsSetAntialias}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
