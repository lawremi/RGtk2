\alias{gdkDrawTextWc}
\name{gdkDrawTextWc}
\title{gdkDrawTextWc}
\description{
Draws a number of wide characters using the given font of fontset.
If the font is a 1-byte font, the string is converted into 1-byte 
characters (discarding the high bytes) before output.
\strong{WARNING: \code{gdk_draw_text_wc} is deprecated and should not be used in newly-written code. Use \code{\link{gdkDrawLayout}} instead.}
}
\usage{gdkDrawTextWc(object, font, gc, x, text)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{font}}{[\code{\link{GdkFont}}]  a \code{\link{GdkFont}}.}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{x}}{[integer]  the x coordinate of the left edge of the text.}
\item{\code{text}}{[numeric]  the wide characters to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
