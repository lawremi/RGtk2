\alias{gtkDrawCheck}
\name{gtkDrawCheck}
\title{gtkDrawCheck}
\description{
Draws a check button indicator in the given rectangle on \code{window} with 
the given parameters.
\strong{WARNING: \code{gtk_draw_check} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintCheck}} instead.}
}
\usage{gtkDrawCheck(object, window, state.type, shadow.type, x, y, width, 
    height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{x}}{x origin of the rectangle to draw the check in}
\item{\verb{y}}{y origin of the rectangle to draw the check in}
\item{\verb{width}}{the width of the rectangle to draw the check in}
\item{\verb{height}}{the height of the rectangle to draw the check in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
