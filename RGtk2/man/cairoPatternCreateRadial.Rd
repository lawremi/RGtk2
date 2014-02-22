\alias{cairoPatternCreateRadial}
\name{cairoPatternCreateRadial}
\title{cairoPatternCreateRadial}
\description{Creates a new radial gradient \code{\link{CairoPattern}} between the two
circles defined by (cx0, cy0, radius0) and (cx1, cy1, radius1).  Before using the
gradient pattern, a number of color stops should be defined using
\code{\link{cairoPatternAddColorStopRgb}} or
\code{\link{cairoPatternAddColorStopRgba}}.}
\usage{cairoPatternCreateRadial(cx0, cy0, radius0, cx1, cy1, radius1)}
\arguments{
\item{\verb{cx0}}{[numeric]  x coordinate for the center of the start circle}
\item{\verb{cy0}}{[numeric]  y coordinate for the center of the start circle}
\item{\verb{radius0}}{[numeric]  radius of the start circle}
\item{\verb{cx1}}{[numeric]  x coordinate for the center of the end circle}
\item{\verb{cy1}}{[numeric]  y coordinate for the center of the end circle}
\item{\verb{radius1}}{[numeric]  radius of the end circle}
}
\details{Note: The coordinates here are in pattern space. For a new pattern,
pattern space is identical to user space, but the relationship
between the spaces can be changed with \code{\link{cairoPatternSetMatrix}}.  }
\value{[\code{\link{CairoPattern}}]  the newly created \code{\link{CairoPattern}} if successful, or
an error pattern in case of no memory.
This function will always return a valid pointer, but if an error
occurred the pattern status will be set to an error.  To inspect
the status of a pattern use \code{\link{cairoPatternStatus}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
