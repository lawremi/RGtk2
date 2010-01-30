\alias{gtkDrawCheck}
\name{gtkDrawCheck}
\title{gtkDrawCheck}
\description{
Draws a check button indicator in the given rectangle on \code{window} with 
the given parameters.
\strong{WARNING: \code{gtk_draw_check} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintCheck}} instead.}
}
\usage{gtkDrawCheck(object, window, state.type, shadow.type, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{state.type}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{shadow.type}}{[\code{\link{GtkShadowType}}]  the type of shadow to draw}
\item{\verb{x}}{[integer]  x origin of the rectangle to draw the check in}
\item{\verb{y}}{[integer]  y origin of the rectangle to draw the check in}
\item{\verb{width}}{[integer]  the width of the rectangle to draw the check in}
\item{\verb{height}}{[integer]  the height of the rectangle to draw the check in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
