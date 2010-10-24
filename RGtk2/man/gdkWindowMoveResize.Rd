\alias{gdkWindowMoveResize}
\name{gdkWindowMoveResize}
\title{gdkWindowMoveResize}
\description{Equivalent to calling \code{\link{gdkWindowMove}} and \code{\link{gdkWindowResize}},
except that both operations are performed at once, avoiding strange
visual effects. (i.e. the user may be able to see the window first
move, then resize, if you don't use \code{\link{gdkWindowMoveResize}}.)}
\usage{gdkWindowMoveResize(object, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{x}}{new X position relative to window's parent}
\item{\verb{y}}{new Y position relative to window's parent}
\item{\verb{width}}{new width}
\item{\verb{height}}{new height}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
