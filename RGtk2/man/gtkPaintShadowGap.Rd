\alias{gtkPaintShadowGap}
\name{gtkPaintShadowGap}
\title{gtkPaintShadowGap}
\description{Draws a shadow around the given rectangle in \code{window} 
using the given style and state and shadow type, leaving a 
gap in one side.}
\usage{gtkPaintShadowGap(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  x origin of the rectangle}
\item{\verb{y}}{[integer]  y origin of the rectangle}
\item{\verb{width}}{[integer]  width of the rectangle }
\item{\verb{height}}{[integer]  width of the rectangle }
\item{\verb{gap.side}}{[\code{\link{GtkPositionType}}]  side in which to leave the gap}
\item{\verb{gap.x}}{[integer]  starting position of the gap}
\item{\verb{gap.width}}{[integer]  width of the gap}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
