\alias{gtkDrawDiamond}
\name{gtkDrawDiamond}
\title{gtkDrawDiamond}
\description{
Draws a diamond in the given rectangle on \code{window} using the given
parameters.
\strong{WARNING: \code{gtk_draw_diamond} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintDiamond}} instead.}
}
\usage{gtkDrawDiamond(object, window, state.type, shadow.type, x, y, 
    width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{x}}{x origin of the rectangle to draw the diamond in}
\item{\verb{y}}{y origin of the rectangle to draw the diamond in}
\item{\verb{width}}{width of the rectangle to draw the diamond in}
\item{\verb{height}}{height of the rectangle to draw the diamond in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
