\alias{gtkDrawFlatBox}
\name{gtkDrawFlatBox}
\title{gtkDrawFlatBox}
\description{
Draws a flat box on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_flat_box} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintFlatBox}} instead.  
Draws a flat box on \code{window} with the given parameters.  }
}
\usage{gtkDrawFlatBox(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the box}
\item{\code{y}}{[integer]  y origin of the box}
\item{\code{width}}{[integer]  the width of the box}
\item{\code{height}}{[integer]  the height of the box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
