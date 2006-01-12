\alias{gdkWindowBeginResizeDrag}
\name{gdkWindowBeginResizeDrag}
\title{gdkWindowBeginResizeDrag}
\description{Begins a window resize operation (for a toplevel window).
You might use this function to implement a "window resize grip," for
example; in fact \code{\link{GtkStatusbar}} uses it. The function works best
with window managers that support the Extended Window Manager Hints (\url{http://www.org/Standards/wm-spec}), but has a 
fallback implementation for other window managers.}
\usage{gdkWindowBeginResizeDrag(object, edge, button, root.x, root.y, timestamp)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a toplevel \code{\link{GdkWindow}}}
\item{\code{edge}}{[\code{\link{GdkWindowEdge}}]  the edge or corner from which the drag is started}
\item{\code{button}}{[integer]  the button being used to drag}
\item{\code{root.x}}{[integer]  root window X coordinate of mouse click that began the drag}
\item{\code{root.y}}{[integer]  root window Y coordinate of mouse click that began the drag}
\item{\code{timestamp}}{[numeric]  timestamp of mouse click that began the drag (use \code{\link{gdkEventGetTime}})}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
