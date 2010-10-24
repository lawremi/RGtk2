\alias{cairoGetCurrentPoint}
\name{cairoGetCurrentPoint}
\title{cairoGetCurrentPoint}
\description{Gets the current point of the current path, which is
conceptually the final point reached by the path so far.}
\usage{cairoGetCurrentPoint(cr, x, y)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{x}}{[numeric]  return value for X coordinate of the current point}
\item{\verb{y}}{[numeric]  return value for Y coordinate of the current point}
}
\details{The current point is returned in the user-space coordinate
system. If there is no defined current point or if \code{cr} is in an
error status, \code{x} and \code{y} will both be set to 0.0. It is possible to
check this in advance with \code{\link{cairoHasCurrentPoint}}.
  
Most path construction functions alter the current point. See the
following for details on how they affect the current point:
\code{\link{cairoNewPath}}, \code{\link{cairoNewSubPath}},
\code{\link{cairoAppendPath}}, \code{\link{cairoClosePath}},
\code{\link{cairoMoveTo}}, \code{\link{cairoLineTo}}, \code{\link{cairoCurveTo}},
\code{\link{cairoRelMoveTo}}, \code{\link{cairoRelLineTo}}, \code{\link{cairoRelCurveTo}},
\code{\link{cairoArc}}, \code{\link{cairoArcNegative}}, \code{\link{cairoRectangle}},
\code{\link{cairoTextPath}}, \code{\link{cairoGlyphPath}}, \code{cairoStrokeToPath()}.
  
Some functions use and alter the current point but do not
otherwise change current path:
\code{\link{cairoShowText}}.
  
Some functions unset the current path and as a result, current point:
\code{\link{cairoFill}}, \code{\link{cairoStroke}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
