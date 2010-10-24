\alias{gtkDrawFocus}
\name{gtkDrawFocus}
\title{gtkDrawFocus}
\description{
Draws a focus indicator around the given rectangle on \code{window} using the
given style.
\strong{WARNING: \code{gtk_draw_focus} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkPaintFocus}} instead.}
}
\usage{gtkDrawFocus(object, window, x, y, width, height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
\item{\verb{x}}{the x origin of the rectangle around which to draw a focus indicator}
\item{\verb{y}}{the y origin of the rectangle around which to draw a focus indicator}
\item{\verb{width}}{the width of the rectangle around which to draw a focus indicator}
\item{\verb{height}}{the height of the rectangle around which to draw a focus indicator}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
