\alias{gtkPaintBoxGap}
\name{gtkPaintBoxGap}
\title{gtkPaintBoxGap}
\description{Draws a box in \code{window} using the given style and state and shadow type, 
leaving a gap in one side.}
\usage{gtkPaintBoxGap(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin of the rectangle}
\item{\code{y}}{[integer]  y origin of the rectangle}
\item{\code{width}}{[integer]  width of the rectangle }
\item{\code{height}}{[integer]  width of the rectangle }
\item{\code{gap.side}}{[\code{\link{GtkPositionType}}]  side in which to leave the gap}
\item{\code{gap.x}}{[integer]  starting position of the gap}
\item{\code{gap.width}}{[integer]  width of the gap}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
