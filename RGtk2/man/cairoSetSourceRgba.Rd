\alias{cairoSetSourceRgba}
\name{cairoSetSourceRgba}
\title{cairoSetSourceRgba}
\description{Sets the source pattern within \code{cr} to a translucent color. This
color will then be used for any subsequent drawing operation until
a new source pattern is set.}
\usage{cairoSetSourceRgba(cr, red, green, blue, alpha)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a cairo context}
\item{\code{red}}{[numeric]  red component of color}
\item{\code{green}}{[numeric]  green component of color}
\item{\code{blue}}{[numeric]  blue component of color}
\item{\code{alpha}}{[numeric]  alpha component of color}
}
\details{The color and alpha components are floating point numbers in the
range 0 to 1. If the values passed in are outside that range, they
will be clamped.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
