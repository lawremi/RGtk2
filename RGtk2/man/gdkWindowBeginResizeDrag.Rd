\alias{gdkWindowBeginResizeDrag}
\name{gdkWindowBeginResizeDrag}
\title{gdkWindowBeginResizeDrag}
\description{Begins a window resize operation (for a toplevel window).
You might use this function to implement a "window resize grip," for
example; in fact \verb{\link{GtkStatusbar}} uses it. The function works best
with window managers that support the Extended Window Manager Hints (\url{http://www.org/Standards/wm-spec}), but has a 
fallback implementation for other window managers.}
\usage{gdkWindowBeginResizeDrag(object, edge, button, root.x, root.y, timestamp)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a toplevel \verb{\link{GdkWindow}}}
\item{\verb{edge}}{[\code{\link{GdkWindowEdge}}]  the edge or corner from which the drag is started}
\item{\verb{button}}{[integer]  the button being used to drag}
\item{\verb{root.x}}{[integer]  root window X coordinate of mouse click that began the drag}
\item{\verb{root.y}}{[integer]  root window Y coordinate of mouse click that began the drag}
\item{\verb{timestamp}}{[numeric]  timestamp of mouse click that began the drag (use \code{\link{gdkEventGetTime}})}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
