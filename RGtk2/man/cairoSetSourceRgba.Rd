\alias{cairoSetSourceRgba}
\name{cairoSetSourceRgba}
\title{cairoSetSourceRgba}
\description{Sets the source pattern within \code{cr} to a translucent color. This
color will then be used for any subsequent drawing operation until
a new source pattern is set.}
\usage{cairoSetSourceRgba(cr, red, green, blue, alpha)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{red}}{[numeric]  red component of color}
\item{\verb{green}}{[numeric]  green component of color}
\item{\verb{blue}}{[numeric]  blue component of color}
\item{\verb{alpha}}{[numeric]  alpha component of color}
}
\details{The color and alpha components are floating point numbers in the
range 0 to 1. If the values passed in are outside that range, they
will be clamped.
  
The default source pattern is opaque black, (that is, it is
equivalent to cairo_set_source_rgba(cr, 0.0, 0.0, 0.0, 1.0)).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
