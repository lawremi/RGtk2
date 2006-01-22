\alias{gdkDrawText}
\name{gdkDrawText}
\title{gdkDrawText}
\description{
Draws a number of characters in the given font or fontset.
\strong{WARNING: \code{gdk_draw_text} is deprecated and should not be used in newly-written code. Use \code{\link{gdkDrawLayout}} instead.  
Draws a number of characters in the given font or fontset.  }
}
\usage{gdkDrawText(object, font, gc, x, y, text, text.length)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{font}}{[\code{\link{GdkFont}}]  a \code{\link{GdkFont}}.}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{x}}{[integer]  the x coordinate of the left edge of the text.}
\item{\code{y}}{[integer]  the y coordinate of the baseline of the text.}
\item{\code{text}}{[character]   the characters to draw.}
\item{\code{text.length}}{[integer]  the number of characters of \code{text} to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
