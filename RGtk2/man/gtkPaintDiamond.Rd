\alias{gtkPaintDiamond}
\name{gtkPaintDiamond}
\title{gtkPaintDiamond}
\description{Draws a diamond in the given rectangle on \code{window} using the given
parameters.}
\usage{gtkPaintDiamond(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin of the rectangle to draw the diamond in}
\item{\code{y}}{[integer]  y origin of the rectangle to draw the diamond in}
\item{\code{width}}{[integer]  width of the rectangle to draw the diamond in}
\item{\code{height}}{[integer]  height of the rectangle to draw the diamond in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
