\alias{gtkPaintFlatBox}
\name{gtkPaintFlatBox}
\title{gtkPaintFlatBox}
\description{Draws a flat box on \code{window} with the given parameters.}
\usage{gtkPaintFlatBox(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin of the box}
\item{\code{y}}{[integer]  y origin of the box}
\item{\code{width}}{[integer]  the width of the box}
\item{\code{height}}{[integer]  the height of the box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
