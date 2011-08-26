\alias{gdkScreenGetWindowStack}
\name{gdkScreenGetWindowStack}
\title{gdkScreenGetWindowStack}
\description{Returns a \verb{list} of \code{\link{GdkWindow}}s representing the current
window stack.}
\usage{gdkScreenGetWindowStack(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}}}
\details{On X11, this is done by inspecting the _NET_CLIENT_LIST_STACKING
property on the root window, as described in the Extended Window
Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}). If the window manager does not support the
_NET_CLIENT_LIST_STACKING hint, this function returns \code{NULL}.
  
On other platforms, this function may return \code{NULL}, depending on whether
it is implementable on that platform.
  
The returned list is newly allocated and owns references to the
windows it contains,
  Since 2.10}
\value{[list] a list of \code{\link{GdkWindow}}s for the current window stack,
or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
