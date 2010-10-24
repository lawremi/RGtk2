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
\item{\verb{pattern}}{[\code{\link{CairoPattern}}]  a \code{\link{CairoPattern}}}
\item{\verb{offset}}{[numeric]  an offset in the range [0.0 .. 1.0]}
\item{\verb{red}}{[numeric]  red component of color}
\item{\verb{green}}{[numeric]  green component of color}
\item{\verb{blue}}{[numeric]  blue component of color}
}
\details{The color is specified in the same way as in \code{\link{cairoSetSourceRgb}}.
  
If two (or more) stops are specified with identical offset values,
they will be sorted according to the order in which the stops are
added, (stops added earlier will compare less than stops added
later). This can be useful for reliably making sharp color
transitions instead of the typical blend.
  
Note: If the pattern is not a gradient pattern, (eg. a linear or
radial pattern), then the pattern will be put into an error status
with a status of \code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
