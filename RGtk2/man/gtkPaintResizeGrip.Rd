\alias{gtkPaintResizeGrip}
\name{gtkPaintResizeGrip}
\title{gtkPaintResizeGrip}
\description{Draws a resize grip in the given rectangle on \code{window} using the given
parameters.}
\usage{gtkPaintResizeGrip(object, window, state.type, area = NULL, widget = NULL, detail = NULL, edge, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{edge}}{[\code{\link{GdkWindowEdge}}]  the edge in which to draw the resize grip}
\item{\verb{x}}{[integer]  the x origin of the rectangle in which to draw the resize grip}
\item{\verb{y}}{[integer]  the y origin of the rectangle in which to draw the resize grip}
\item{\verb{width}}{[integer]  the width of the rectangle in which to draw the resize grip}
\item{\verb{height}}{[integer]  the height of the rectangle in which to draw the resize grip}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
