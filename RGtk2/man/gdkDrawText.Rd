\alias{gdkDrawText}
\name{gdkDrawText}
\title{gdkDrawText}
\description{
Draws a number of characters in the given font or fontset.
\strong{WARNING: \code{gdk_draw_text} is deprecated and should not be used in newly-written code. Use \code{\link{gdkDrawLayout}} instead.}
}
\usage{gdkDrawText(object, font, gc, x, y, text, text.length)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}} (a \verb{\link{GdkWindow}} or a \verb{\link{GdkPixmap}}).}
\item{\verb{font}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}.}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{x}}{[integer]  the x coordinate of the left edge of the text.}
\item{\verb{y}}{[integer]  the y coordinate of the baseline of the text.}
\item{\verb{text}}{[character]   the characters to draw.}
\item{\verb{text.length}}{[integer]  the number of characters of \code{text} to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
