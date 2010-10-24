\alias{gdkDrawText}
\name{gdkDrawText}
\title{gdkDrawText}
\description{
Draws a number of characters in the given font or fontset.
\strong{WARNING: \code{gdk_draw_text} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{gdkDrawLayout}} instead.}
}
\usage{gdkDrawText(object, font, gc, x, y, text, text.length)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{font}}{a \code{\link{GdkFont}}.}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{x}}{the x coordinate of the left edge of the text.}
\item{\verb{y}}{the y coordinate of the baseline of the text.}
\item{\verb{text}}{the characters to draw.}
\item{\verb{text.length}}{the number of characters of \code{text} to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
