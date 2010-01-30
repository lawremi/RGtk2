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
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the rectangle}
\item{\verb{y}}{[integer]  y origin of the rectangle}
\item{\verb{width}}{[integer]  width of the rectangle }
\item{\verb{height}}{[integer]  width of the rectangle }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
