\alias{gdkWindowGetOrigin}
\name{gdkWindowGetOrigin}
\title{gdkWindowGetOrigin}
\description{Obtains the position of a window in root window coordinates.
(Compare with \code{\link{gdkWindowGetPosition}} and
\code{\link{gdkWindowGetGeometry}} which return the position of a window
relative to its parent window.)}
\usage{gdkWindowGetOrigin(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}}
\value{
A list containing the following elements:
\item{retval}{[integer]  not meaningful, ignore}
\item{\code{x}}{[integer]  return location for X coordinate}
\item{\code{y}}{[integer]  return location for Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
