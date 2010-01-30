\alias{gtkDrawFocus}
\name{gtkDrawFocus}
\title{gtkDrawFocus}
\description{
Draws a focus indicator around the given rectangle on \code{window} using the
given style.
\strong{WARNING: \code{gtk_draw_focus} is deprecated and should not be used in newly-written code. Use \code{\link{gtkPaintFocus}} instead.}
}
\usage{gtkDrawFocus(object, window, x, y, width, height)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}}
\item{\verb{x}}{[integer]  the x origin of the rectangle around which to draw a focus indicator}
\item{\verb{y}}{[integer]  the y origin of the rectangle around which to draw a focus indicator}
\item{\verb{width}}{[integer]  the width of the rectangle around which to draw a focus indicator}
\item{\verb{height}}{[integer]  the height of the rectangle around which to draw a focus indicator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
