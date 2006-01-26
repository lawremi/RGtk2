\alias{gtkDrawHandle}
\name{gtkDrawHandle}
\title{gtkDrawHandle}
\description{
Draws a handle as used in \code{\link{GtkHandleBox}} and \code{\link{GtkPaned}}.
\strong{WARNING: \code{gtk_draw_handle} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintHandle}} instead.}
}
\usage{gtkDrawHandle(object, window, state.type, shadow.type, x, y, width, height, orientation)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\code{x}}{[integer]  x origin of the handle}
\item{\code{y}}{[integer]  y origin of the handle}
\item{\code{width}}{[integer]  with of the handle}
\item{\code{height}}{[integer]  height of the handle}
\item{\code{orientation}}{[\code{\link{GtkOrientation}}]  the orientation of the handle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
