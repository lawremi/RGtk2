\alias{cairoPatternAddColorStopRgb}
\name{cairoPatternAddColorStopRgb}
\title{cairoPatternAddColorStopRgb}
\description{Adds an opaque color stop to a gradient pattern. The offset
specifies the location along the gradient's control vector. For
example, a linear gradient's control vector is from (x0,y0) to
(x1,y1) while a radial gradient's control vector is from any point
on the start circle to the corresponding point on the end circle.}
\usage{cairoPatternAddColorStopRgb(pattern, offset, red, green, blue)}
\arguments{
\item{\code{pattern}}{[\code{\link{cairo_pattern_t}}]  a \code{\link{cairo_pattern_t}}}
\item{\code{offset}}{[numeric]  an offset in the range [0.0 .. 1.0]}
\item{\code{red}}{[numeric]  red component of color}
\item{\code{green}}{[numeric]  green component of color}
\item{\code{blue}}{[numeric]  blue component of color}
}
\details{The color is specified in the same way as in \code{\link{cairoSetSourceRgb}}.
  
Note: If the pattern is not a gradient pattern, (eg. a linear or
radial pattern), then the pattern will be put into an error status
with a status of \code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
