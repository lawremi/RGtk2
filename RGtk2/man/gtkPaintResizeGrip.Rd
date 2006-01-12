\alias{gtkPaintResizeGrip}
\name{gtkPaintResizeGrip}
\title{gtkPaintResizeGrip}
\description{Draws a resize grip in the given rectangle on \code{window} using the given
parameters.}
\usage{gtkPaintResizeGrip(object, window, state.type, area = NULL, widget = NULL, detail = NULL, edge, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{edge}}{[\code{\link{GdkWindowEdge}}]  the edge in which to draw the resize grip}
\item{\code{x}}{[integer]  the x origin of the rectangle in which to draw the resize grip}
\item{\code{y}}{[integer]  the y origin of the rectangle in which to draw the resize grip}
\item{\code{width}}{[integer]  the width of the rectangle in which to draw the resize grip}
\item{\code{height}}{[integer]  the height of the rectangle in which to draw the resize grip}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
