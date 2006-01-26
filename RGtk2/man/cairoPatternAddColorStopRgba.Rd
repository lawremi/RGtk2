\alias{cairoPatternAddColorStopRgba}
\name{cairoPatternAddColorStopRgba}
\title{cairoPatternAddColorStopRgba}
\description{Adds a translucent color stop to a gradient pattern. The offset
specifies the location along the gradient's control vector. For
example, a linear gradient's control vector is from (x0,y0) to
(x1,y1) while a radial gradient's control vector is from any point
on the start circle to the corresponding point on the end circle.}
\usage{cairoPatternAddColorStopRgba(pattern, offset, red, green, blue, alpha)}
\arguments{
\item{\code{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\code{offset}}{[numeric]  an offset in the range [0.0 .. 1.0]}
\item{\code{red}}{[numeric]  red component of color}
\item{\code{green}}{[numeric]  green component of color}
\item{\code{blue}}{[numeric]  blue component of color}
\item{\code{alpha}}{[numeric]  alpha component of color}
}
\details{The color is specified in the same way as in \code{\link{cairoSetSourceRgba}}.
  
Note: If the pattern is not a gradient pattern, (eg. a linear or
radial pattern), then the pattern will be put into an error status
with a status of \code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
