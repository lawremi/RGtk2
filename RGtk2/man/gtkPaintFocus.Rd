\alias{gtkPaintFocus}
\name{gtkPaintFocus}
\title{gtkPaintFocus}
\description{Draws a focus indicator around the given rectangle on \code{window} using the
given style.}
\usage{gtkPaintFocus(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  the x origin of the rectangle around which to draw a focus indicator}
\item{\code{y}}{[integer]  the y origin of the rectangle around which to draw a focus indicator}
\item{\code{width}}{[integer]  the width of the rectangle around which to draw a focus indicator}
\item{\code{height}}{[integer]  the height of the rectangle around which to draw a focus indicator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
