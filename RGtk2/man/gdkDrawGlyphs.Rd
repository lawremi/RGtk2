\alias{gdkDrawGlyphs}
\name{gdkDrawGlyphs}
\title{gdkDrawGlyphs}
\description{This is a low-level function; 99\% of text rendering should be done
using \code{\link{gdkDrawLayout}} instead.}
\usage{gdkDrawGlyphs(object, gc, font, x, y, glyphs)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}}}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}}
\item{\verb{font}}{[\verb{\link{PangoFont}}]  font to be used}
\item{\verb{x}}{[integer]  X coordinate of baseline origin}
\item{\verb{y}}{[integer]  Y coordinate of baseline origin}
\item{\verb{glyphs}}{[\verb{\link{PangoGlyphString}}]  the glyph string to draw}
}
\details{A glyph is a single image in a font. This function draws a sequence of
glyphs.  To obtain a sequence of glyphs you have to understand a
lot about internationalized text handling, which you don't want to
understand; thus, use \code{\link{gdkDrawLayout}} instead of this function,
\code{\link{gdkDrawLayout}} handles the details.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
