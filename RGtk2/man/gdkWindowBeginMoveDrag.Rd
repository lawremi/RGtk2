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
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a toplevel \verb{\link{GdkWindow}}}
\item{\verb{button}}{[integer]  the button being used to drag}
\item{\verb{root.x}}{[integer]  root window X coordinate of mouse click that began the drag}
\item{\verb{root.y}}{[integer]  root window Y coordinate of mouse click that began the drag}
\item{\verb{timestamp}}{[numeric]  timestamp of mouse click that began the drag}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
