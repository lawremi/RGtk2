\alias{gtkPaintDiamond}
\name{gtkPaintDiamond}
\title{gtkPaintDiamond}
\description{Draws a diamond in the given rectangle on \code{window} using the given
parameters.}
\usage{gtkPaintDiamond(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  x origin of the rectangle to draw the diamond in}
\item{\verb{y}}{[integer]  y origin of the rectangle to draw the diamond in}
\item{\verb{width}}{[integer]  width of the rectangle to draw the diamond in}
\item{\verb{height}}{[integer]  height of the rectangle to draw the diamond in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
