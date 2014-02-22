\alias{gtkDrawArrow}
\name{gtkDrawArrow}
\title{gtkDrawArrow}
\description{
Draws an arrow in the given rectangle on \code{window} using the given 
parameters. \code{arrow.type} determines the direction of the arrow.
\strong{WARNING: \code{gtk_draw_arrow} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintArrow}} instead.}
}
\usage{gtkDrawArrow(object, window, state.type, shadow.type, arrow.type, 
    fill, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{arrow.type}}{the type of arrow to draw}
\item{\verb{fill}}{\code{TRUE} if the arrow tip should be filled}
\item{\verb{x}}{x origin of the rectangle to draw the arrow in}
\item{\verb{y}}{y origin of the rectangle to draw the arrow in}
\item{\verb{width}}{width of the rectangle to draw the arrow in}
\item{\verb{height}}{height of the rectangle to draw the arrow in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
