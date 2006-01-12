\alias{gdkScreenGetMonitorAtPoint}
\name{gdkScreenGetMonitorAtPoint}
\title{gdkScreenGetMonitorAtPoint}
\description{Returns the monitor number in which the point (\code{x},\code{y}) is located.}
\usage{gdkScreenGetMonitorAtPoint(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GdkScreen}}]  a \code{\link{GdkScreen}}.}
\item{\code{x}}{[integer]  the x coordinate in the virtual screen.}
\item{\code{y}}{[integer]  the y coordinate in the virtual screen.}
}
\details{  Since  2.2}
\value{[integer]  the monitor number in which the point (\code{x},\code{y}) lies, or
  a monitor close to (\code{x},\code{y}) if the point is not in any monitor.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
