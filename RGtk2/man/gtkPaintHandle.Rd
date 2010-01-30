\alias{gtkPaintHandle}
\name{gtkPaintHandle}
\title{gtkPaintHandle}
\description{Draws a handle as used in \verb{\link{GtkHandleBox}} and \verb{\link{GtkPaned}}.}
\usage{gtkPaintHandle(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{area}}{[\verb{\link{GdkRectangle}}]  clip rectangle, or \code{NULL} if the
       output should not be clipped}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget (may be \code{NULL})}
\item{\verb{detail}}{[character]  a style detail (may be \code{NULL})}
\item{\verb{x}}{[integer]  x origin of the handle}
\item{\verb{y}}{[integer]  y origin of the handle}
\item{\verb{width}}{[integer]  with of the handle}
\item{\verb{height}}{[integer]  height of the handle}
\item{\verb{orientation}}{[\code{\link{GtkOrientation}}]  the orientation of the handle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
