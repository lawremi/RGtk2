\alias{gtkDrawBox}
\name{gtkDrawBox}
\title{gtkDrawBox}
\description{
Draws a box on \code{window} with the given parameters.
\strong{WARNING: \code{gtk_draw_box} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintBox}} instead.}
}
\usage{gtkDrawBox(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the box}
\item{\verb{y}}{[integer]  y origin of the box}
\item{\verb{width}}{[integer]  the width of the box}
\item{\verb{height}}{[integer]  the height of the box}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
