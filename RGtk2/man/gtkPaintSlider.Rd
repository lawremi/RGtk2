\alias{gtkPaintSlider}
\name{gtkPaintSlider}
\title{gtkPaintSlider}
\description{Draws a slider in the given rectangle on \code{window} using the
given style and orientation.}
\usage{gtkPaintSlider(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  a shadow}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  the x origin of the rectangle in which to draw a slider}
\item{\code{y}}{[integer]  the y origin of the rectangle in which to draw a slider}
\item{\code{width}}{[integer]  the width of the rectangle in which to draw a slider}
\item{\code{height}}{[integer]  the height of the rectangle in which to draw a slider}
\item{\code{orientation}}{[\code{\link{GtkOrientation}}]  the orientation to be used}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
