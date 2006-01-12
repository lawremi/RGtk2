\alias{gdkDrawGlyphs}
\name{gdkDrawGlyphs}
\title{gdkDrawGlyphs}
\description{This is a low-level function; 99% of text rendering should be done
using \code{\link{gdkDrawLayout}} instead.}
\usage{gdkDrawGlyphs(object, gc, font, x, y, glyphs)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}}}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}}
\item{\code{font}}{[\code{\link{PangoFont}}]  font to be used}
\item{\code{x}}{[integer]  X coordinate of baseline origin}
\item{\code{y}}{[integer]  Y coordinate of baseline origin}
\item{\code{glyphs}}{[\code{\link{PangoGlyphString}}]  the glyph string to draw}
}
\details{A glyph is a single image in a font. This function draws a sequence of
glyphs.  To obtain a sequence of glyphs you have to understand a
lot about internationalized text handling, which you don't want to
understand; thus, use \code{\link{gdkDrawLayout}} instead of this function,
\code{\link{gdkDrawLayout}} handles the details.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
