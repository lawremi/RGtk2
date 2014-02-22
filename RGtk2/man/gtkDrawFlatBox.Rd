\alias{gtkDrawFlatBox}
\name{gtkDrawFlatBox}
\title{gtkDrawFlatBox}
\description{
Draws a flat box on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_flat_box} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintFlatBox}} instead.}
}
\usage{gtkDrawFlatBox(object, window, state.type, shadow.type, x, y, 
    width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{state.type}}{a state}
\item{\verb{shadow.type}}{the type of shadow to draw}
\item{\verb{x}}{x origin of the box}
\item{\verb{y}}{y origin of the box}
\item{\verb{width}}{the width of the box}
\item{\verb{height}}{the height of the box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
