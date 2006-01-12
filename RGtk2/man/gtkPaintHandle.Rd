\alias{gtkPaintHandle}
\name{gtkPaintHandle}
\title{gtkPaintHandle}
\description{Draws a handle as used in \code{\link{GtkHandleBox}} and \code{\link{GtkPaned}}.}
\usage{gtkPaintHandle(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{area}}{[\code{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\code{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\code{x}}{[integer]  x origin of the handle}
\item{\code{y}}{[integer]  y origin of the handle}
\item{\code{width}}{[integer]  with of the handle}
\item{\code{height}}{[integer]  height of the handle}
\item{\code{orientation}}{[\code{\link{GtkOrientation}}]  the orientation of the handle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
