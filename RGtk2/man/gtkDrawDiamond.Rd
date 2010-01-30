\alias{gtkDrawDiamond}
\name{gtkDrawDiamond}
\title{gtkDrawDiamond}
\description{
Draws a diamond in the given rectangle on \code{window} using the given
parameters.
\strong{WARNING: \code{gtk_draw_diamond} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintDiamond}} instead.}
}
\usage{gtkDrawDiamond(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the rectangle to draw the diamond in}
\item{\verb{y}}{[integer]  y origin of the rectangle to draw the diamond in}
\item{\verb{width}}{[integer]  width of the rectangle to draw the diamond in}
\item{\verb{height}}{[integer]  height of the rectangle to draw the diamond in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
