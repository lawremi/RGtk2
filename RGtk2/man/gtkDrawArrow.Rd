\alias{gtkDrawArrow}
\name{gtkDrawArrow}
\title{gtkDrawArrow}
\description{
Draws an arrow in the given rectangle on \code{window} using the given 
parameters. \code{arrow.type} determines the direction of the arrow.
\strong{WARNING: \code{gtk_draw_arrow} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintArrow}} instead.}
}
\usage{gtkDrawArrow(object, window, state.type, shadow.type, arrow.type, fill, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\verb{arrow.type}}{[\code{\link{GtkArrowType}}]  the type of arrow to draw}
\item{\verb{fill}}{[logical] \code{TRUE} if the arrow tip should be filled}
\item{\verb{x}}{[integer]  x origin of the rectangle to draw the arrow in}
\item{\verb{y}}{[integer]  y origin of the rectangle to draw the arrow in}
\item{\verb{width}}{[integer]  width of the rectangle to draw the arrow in}
\item{\verb{height}}{[integer]  height of the rectangle to draw the arrow in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
