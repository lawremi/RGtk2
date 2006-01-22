\alias{gtkDrawResizeGrip}
\name{gtkDrawResizeGrip}
\title{gtkDrawResizeGrip}
\description{
Draws a resize grip in the given rectangle on \code{window} using the given
parameters.
\strong{WARNING: \code{gtk_draw_resize_grip} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintResizeGrip}} instead.  
Draws a resize grip in the given rectangle on \code{window} using the given
parameters.  }
}
\usage{gtkDrawResizeGrip(object, window, state.type, edge, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{edge}}{[\code{\link{GdkWindowEdge}}]  the edge in which to draw the resize grip}
\item{\code{x}}{[integer]  the x origin of the rectangle in which to draw the resize grip}
\item{\code{y}}{[integer]  the y origin of the rectangle in which to draw the resize grip}
\item{\code{width}}{[integer]  the width of the rectangle in which to draw the resize grip}
\item{\code{height}}{[integer]  the height of the rectangle in which to draw the resize grip}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
