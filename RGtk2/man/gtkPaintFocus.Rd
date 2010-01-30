\alias{gtkPaintFocus}
\name{gtkPaintFocus}
\title{gtkPaintFocus}
\description{Draws a focus indicator around the given rectangle on \code{window} using the
given style.}
\usage{gtkPaintFocus(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  the x origin of the rectangle around which to draw a focus indicator}
\item{\verb{y}}{[integer]  the y origin of the rectangle around which to draw a focus indicator}
\item{\verb{width}}{[integer]  the width of the rectangle around which to draw a focus indicator}
\item{\verb{height}}{[integer]  the height of the rectangle around which to draw a focus indicator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
