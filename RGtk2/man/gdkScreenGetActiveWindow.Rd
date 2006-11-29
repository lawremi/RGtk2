\alias{gdkScreenGetActiveWindow}
\name{gdkScreenGetActiveWindow}
\title{gdkScreenGetActiveWindow}
\description{Returns the screen's currently active window.}
\usage{gdkScreenGetActiveWindow(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkScreen}}]  a \code{\link{GdkScreen}}}}
\details{On X11, this is done by inspecting the \_NET\_ACTIVE\_WINDOW property
on the root window, as described in the Extended Window
Manager Hints (\url{http://www.org/Standards/wm-spec}). If there is no currently currently active
window, or the window manager does not support the
\_NET\_ACTIVE\_WINDOW hint, this function returns \code{NULL}.
  
On other platforms, this function may return \code{NULL}, depending on whether
it is implementable on that platform.  

  Since  2.10}
\value{[\code{\link{GdkWindow}}]  the currently active window, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
