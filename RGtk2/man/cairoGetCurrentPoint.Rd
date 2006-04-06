\alias{cairoGetCurrentPoint}
\name{cairoGetCurrentPoint}
\title{cairoGetCurrentPoint}
\description{Gets the current point of the current path, which is
conceptually the final point reached by the path so far.}
\usage{cairoGetCurrentPoint(cr, x, y)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\code{x}}{[numeric]  return value for X coordinate of the current point}
\item{\code{y}}{[numeric]  return value for Y coordinate of the current point}
}
\details{The current point is returned in the user-space coordinate
system. If there is no defined current point then \code{x} and \code{y} will
both be set to 0.0.
  
Most path construction functions alter the current point. See the
following for details on how they affect the current point:
  
\code{\link{cairoNewPath}}, \code{\link{cairoMoveTo}}, \code{\link{cairoLineTo}},
\code{\link{cairoCurveTo}}, \code{\link{cairoArc}}, \code{\link{cairoRelMoveTo}},
\code{\link{cairoRelLineTo}}, \code{\link{cairoRelCurveTo}}, \code{\link{cairoArc}},
\code{\link{cairoTextPath}}, \code{cairo\Stroke\To\Path()}  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
