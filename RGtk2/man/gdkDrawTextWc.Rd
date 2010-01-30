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
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}} (a \verb{\link{GdkWindow}} or a \verb{\link{GdkPixmap}}).}
\item{\verb{font}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}.}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{x}}{[integer]  the x coordinate of the left edge of the text.}
\item{\verb{text}}{[numeric]  the wide characters to draw.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
