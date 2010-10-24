\alias{gdkDrawString}
\name{gdkDrawString}
\title{gdkDrawString}
\description{
Draws a string of characters in the given font or fontset.
\strong{WARNING: \code{gdk_draw_string} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gdkDrawLayout}} instead.}
}
\usage{gdkDrawString(object, font, gc, x, y, string)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{font}}{a \code{\link{GdkFont}}.}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{x}}{the x coordinate of the left edge of the text.}
\item{\verb{y}}{the y coordinate of the baseline of the text.}
\item{\verb{string}}{the string of characters to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
