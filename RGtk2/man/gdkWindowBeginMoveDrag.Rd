\alias{gdkWindowBeginMoveDrag}
\name{gdkWindowBeginMoveDrag}
\title{gdkWindowBeginMoveDrag}
\description{Begins a window move operation (for a toplevel window).  You might
use this function to implement a "window move grip," for
example. The function works best with window managers that support
the Extended 
Window Manager Hints (\url{http://www.org/Standards/wm-spec}), but has a fallback implementation for
other window managers.}
\usage{gdkWindowBeginMoveDrag(object, button, root.x, root.y, timestamp)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a toplevel \code{\link{GdkWindow}}}
\item{\code{button}}{[integer]  the button being used to drag}
\item{\code{root.x}}{[integer]  root window X coordinate of mouse click that began the drag}
\item{\code{root.y}}{[integer]  root window Y coordinate of mouse click that began the drag}
\item{\code{timestamp}}{[numeric]  timestamp of mouse click that began the drag}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
