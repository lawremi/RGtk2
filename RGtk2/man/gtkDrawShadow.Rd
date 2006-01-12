\alias{gtkDrawShadow}
\name{gtkDrawShadow}
\title{gtkDrawShadow}
\description{
Draws a shadow around the given rectangle in \code{window} 
using the given style and state and shadow type.
\strong{WARNING: \code{gtk_draw_shadow} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintShadow}} instead.}
}
\usage{gtkDrawShadow(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the rectangle}
\item{\code{y}}{[integer]  y origin of the rectangle}
\item{\code{width}}{[integer]  width of the rectangle }
\item{\code{height}}{[integer]  width of the rectangle }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
