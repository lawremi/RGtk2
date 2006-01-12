\alias{gdkWindowMoveResize}
\name{gdkWindowMoveResize}
\title{gdkWindowMoveResize}
\description{Equivalent to calling \code{\link{gdkWindowMove}} and \code{\link{gdkWindowResize}},
except that both operations are performed at once, avoiding strange
visual effects. (i.e. the user may be able to see the window first
move, then resize, if you don't use \code{\link{gdkWindowMoveResize}}.)}
\usage{gdkWindowMoveResize(object, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{x}}{[integer]  new X position relative to window's parent}
\item{\code{y}}{[integer]  new Y position relative to window's parent}
\item{\code{width}}{[integer]  new width}
\item{\code{height}}{[integer]  new height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
