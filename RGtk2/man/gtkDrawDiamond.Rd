\alias{gtkDrawDiamond}
\name{gtkDrawDiamond}
\title{gtkDrawDiamond}
\description{
Draws a diamond in the given rectangle on \code{window} using the given
parameters.
\strong{WARNING: \code{gtk_draw_diamond} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintDiamond}} instead.  
Draws a diamond in the given rectangle on \code{window} using the given
parameters.  }
}
\usage{gtkDrawDiamond(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the rectangle to draw the diamond in}
\item{\code{y}}{[integer]  y origin of the rectangle to draw the diamond in}
\item{\code{width}}{[integer]  width of the rectangle to draw the diamond in}
\item{\code{height}}{[integer]  height of the rectangle to draw the diamond in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
