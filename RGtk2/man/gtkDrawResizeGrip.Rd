\alias{gtkDrawResizeGrip}
\name{gtkDrawResizeGrip}
\title{gtkDrawResizeGrip}
\description{
Draws a resize grip in the given rectangle on \code{window} using the given
parameters.
\strong{WARNING: \code{gtk_draw_resize_grip} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintResizeGrip}} instead.}
}
\usage{gtkDrawResizeGrip(object, window, state.type, edge, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{edge}}{[\code{\link{GdkWindowEdge}}]  the edge in which to draw the resize grip}
\item{\verb{x}}{[integer]  the x origin of the rectangle in which to draw the resize grip}
\item{\verb{y}}{[integer]  the y origin of the rectangle in which to draw the resize grip}
\item{\verb{width}}{[integer]  the width of the rectangle in which to draw the resize grip}
\item{\verb{height}}{[integer]  the height of the rectangle in which to draw the resize grip}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
