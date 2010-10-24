\alias{gdkDrawGlyphs}
\name{gdkDrawGlyphs}
\title{gdkDrawGlyphs}
\description{This is a low-level function; 99\% of text rendering should be done
using \code{\link{gdkDrawLayout}} instead.}
\usage{gdkDrawGlyphs(object, gc, font, x, y, glyphs)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}}}
\item{\verb{gc}}{a \code{\link{GdkGC}}}
\item{\verb{font}}{font to be used}
\item{\verb{x}}{X coordinate of baseline origin}
\item{\verb{y}}{Y coordinate of baseline origin}
\item{\verb{glyphs}}{the glyph string to draw}
}
\details{A glyph is a single image in a font. This function draws a sequence of
glyphs.  To obtain a sequence of glyphs you have to understand a
lot about internationalized text handling, which you don't want to
understand; thus, use \code{\link{gdkDrawLayout}} instead of this function,
\code{\link{gdkDrawLayout}} handles the details.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
