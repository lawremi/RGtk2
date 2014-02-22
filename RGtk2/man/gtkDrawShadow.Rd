\alias{gtkDrawShadow}
\name{gtkDrawShadow}
\title{gtkDrawShadow}
\description{
Draws a shadow around the given rectangle in \code{window} 
using the given style and state and shadow type.
\strong{WARNING: \code{gtk_draw_shadow} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintShadow}} instead.}
}
\usage{gtkDrawShadow(object, window, state.type, shadow.type, x, y, 
    width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{x}}{x origin of the rectangle}
\item{\verb{y}}{y origin of the rectangle}
\item{\verb{width}}{width of the rectangle}
\item{\verb{height}}{width of the rectangle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
