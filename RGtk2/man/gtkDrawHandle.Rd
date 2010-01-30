\alias{gtkDrawHandle}
\name{gtkDrawHandle}
\title{gtkDrawHandle}
\description{
Draws a handle as used in \verb{\link{GtkHandleBox}} and \verb{\link{GtkPaned}}.
\strong{WARNING: \code{gtk_draw_handle} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintHandle}} instead.}
}
\usage{gtkDrawHandle(object, window, state.type, shadow.type, x, y, width, height, orientation)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the handle}
\item{\verb{y}}{[integer]  y origin of the handle}
\item{\verb{width}}{[integer]  with of the handle}
\item{\verb{height}}{[integer]  height of the handle}
\item{\verb{orientation}}{[\code{\link{GtkOrientation}}]  the orientation of the handle}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
