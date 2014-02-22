\alias{gtkWindowBeginResizeDrag}
\name{gtkWindowBeginResizeDrag}
\title{gtkWindowBeginResizeDrag}
\description{Starts resizing a window. This function is used if an application
has window resizing controls. When GDK can support it, the resize
will be done using the standard mechanism for the window manager or windowing
system. Otherwise, GDK will try to emulate window resizing,
potentially not all that well, depending on the windowing system.}
\usage{gtkWindowBeginResizeDrag(object, edge, button, root.x, root.y, 
    timestamp)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{edge}}{position of the resize control}
\item{\verb{button}}{mouse button that initiated the drag}
\item{\verb{root.x}}{X position where the user clicked to initiate the drag, in root window coordinates}
\item{\verb{root.y}}{Y position where the user clicked to initiate the drag}
\item{\verb{timestamp}}{timestamp from the click event that initiated the drag}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
