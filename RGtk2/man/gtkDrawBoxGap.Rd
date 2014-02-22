\alias{gtkDrawBoxGap}
\name{gtkDrawBoxGap}
\title{gtkDrawBoxGap}
\description{
Draws a box in \code{window} using the given style and state and shadow type, 
leaving a gap in one side.
\strong{WARNING: \code{gtk_draw_box_gap} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintBoxGap}} instead.}
}
\usage{gtkDrawBoxGap(object, window, state.type, shadow.type, x, y, 
    width, height, gap.side, gap.x, gap.width)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{type of shadow to draw}
\item{\verb{x}}{x origin of the rectangle}
\item{\verb{y}}{y origin of the rectangle}
\item{\verb{width}}{width of the rectangle}
\item{\verb{height}}{width of the rectangle}
\item{\verb{gap.side}}{side in which to leave the gap}
\item{\verb{gap.x}}{starting position of the gap}
\item{\verb{gap.width}}{width of the gap}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
