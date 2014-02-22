\alias{gdkWindowBeginResizeDrag}
\name{gdkWindowBeginResizeDrag}
\title{gdkWindowBeginResizeDrag}
\description{Begins a window resize operation (for a toplevel window).
You might use this function to implement a "window resize grip," for
example; in fact \code{\link{GtkStatusbar}} uses it. The function works best
with window managers that support the Extended Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}), but has a 
fallback implementation for other window managers.}
\usage{gdkWindowBeginResizeDrag(object, edge, button, root.x, root.y, 
    timestamp)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{edge}}{the edge or corner from which the drag is started}
\item{\verb{button}}{the button being used to drag}
\item{\verb{root.x}}{root window X coordinate of mouse click that began the drag}
\item{\verb{root.y}}{root window Y coordinate of mouse click that began the drag}
\item{\verb{timestamp}}{timestamp of mouse click that began the drag (use \code{\link{gdkEventGetTime}})}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
