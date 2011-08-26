\alias{gdkScreenGetActiveWindow}
\name{gdkScreenGetActiveWindow}
\title{gdkScreenGetActiveWindow}
\description{Returns the screen's currently active window.}
\usage{gdkScreenGetActiveWindow(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}}}
\details{On X11, this is done by inspecting the _NET_ACTIVE_WINDOW property
on the root window, as described in the Extended Window
Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}). If there is no currently currently active
window, or the window manager does not support the
_NET_ACTIVE_WINDOW hint, this function returns \code{NULL}.
  
On other platforms, this function may return \code{NULL}, depending on whether
it is implementable on that platform.
  Since 2.10}
\value{[\code{\link{GdkWindow}}] the currently active window, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
