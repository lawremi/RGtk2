\alias{gdkDrawString}
\name{gdkDrawString}
\title{gdkDrawString}
\description{
Draws a string of characters in the given font or fontset.
\strong{WARNING: \code{gdk_draw_string} is deprecated and should not be used in newly-written code. Use \code{\link{gdkDrawLayout}} instead.}
}
\usage{gdkDrawString(object, font, gc, x, y, string)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{font}}{[\code{\link{GdkFont}}]  a \code{\link{GdkFont}}.}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{x}}{[integer]  the x coordinate of the left edge of the text.}
\item{\code{y}}{[integer]  the y coordinate of the baseline of the text.}
\item{\code{string}}{[character]   the string of characters to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
