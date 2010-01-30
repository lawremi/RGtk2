\alias{gtkDrawBoxGap}
\name{gtkDrawBoxGap}
\title{gtkDrawBoxGap}
\description{
Draws a box in \code{window} using the given style and state and shadow type, 
leaving a gap in one side.
\strong{WARNING: \code{gtk_draw_box_gap} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintBoxGap}} instead.}
}
\usage{gtkDrawBoxGap(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the rectangle}
\item{\verb{y}}{[integer]  y origin of the rectangle}
\item{\verb{width}}{[integer]  width of the rectangle }
\item{\verb{height}}{[integer]  width of the rectangle }
\item{\verb{gap.side}}{[\code{\link{GtkPositionType}}]  side in which to leave the gap}
\item{\verb{gap.x}}{[integer]  starting position of the gap}
\item{\verb{gap.width}}{[integer]  width of the gap}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
