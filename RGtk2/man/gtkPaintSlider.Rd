\alias{gtkPaintSlider}
\name{gtkPaintSlider}
\title{gtkPaintSlider}
\description{Draws a slider in the given rectangle on \code{window} using the
given style and orientation.}
\usage{gtkPaintSlider(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  a shadow}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  the x origin of the rectangle in which to draw a slider}
\item{\verb{y}}{[integer]  the y origin of the rectangle in which to draw a slider}
\item{\verb{width}}{[integer]  the width of the rectangle in which to draw a slider}
\item{\verb{height}}{[integer]  the height of the rectangle in which to draw a slider}
\item{\verb{orientation}}{[\code{\link{GtkOrientation}}]  the orientation to be used}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
