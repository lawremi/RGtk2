\alias{gtkDrawShadowGap}
\name{gtkDrawShadowGap}
\title{gtkDrawShadowGap}
\description{
Draws a shadow around the given rectangle in \code{window} 
using the given style and state and shadow type, leaving a 
gap in one side.
\strong{WARNING: \code{gtk_draw_shadow_gap} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintShadowGap}} instead.  
Draws a shadow around the given rectangle in \code{window} 
using the given style and state and shadow type, leaving a 
gap in one side.  }
}
\usage{gtkDrawShadowGap(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
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
