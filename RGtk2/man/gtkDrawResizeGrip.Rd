\alias{gtkDrawResizeGrip}
\name{gtkDrawResizeGrip}
\title{gtkDrawResizeGrip}
\description{
Draws a resize grip in the given rectangle on \code{window} using the given
parameters.
\strong{WARNING: \code{gtk_draw_resize_grip} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintResizeGrip}} instead.}
}
\usage{gtkDrawResizeGrip(object, window, state.type, edge, x, y, width, 
    height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{edge}}{the edge in which to draw the resize grip}
\item{\verb{x}}{the x origin of the rectangle in which to draw the resize grip}
\item{\verb{y}}{the y origin of the rectangle in which to draw the resize grip}
\item{\verb{width}}{the width of the rectangle in which to draw the resize grip}
\item{\verb{height}}{the height of the rectangle in which to draw the resize grip}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
