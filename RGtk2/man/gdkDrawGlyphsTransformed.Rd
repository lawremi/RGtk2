\alias{gdkDrawGlyphsTransformed}
\name{gdkDrawGlyphsTransformed}
\title{gdkDrawGlyphsTransformed}
\description{Renders a \code{\link{PangoGlyphString}} onto a drawable, possibly
transforming the layed-out coordinates through a transformation
matrix. Note that the transformation matrix for \code{font} is not
changed, so to produce correct rendering results, the \code{font}
must have been loaded using a \code{\link{PangoContext}} with an identical
transformation matrix to that passed in to this function.}
\usage{gdkDrawGlyphsTransformed(drawable, gc, matrix, font, x, y, glyphs)}
\arguments{
\item{\verb{drawable}}{a \code{\link{GdkDrawable}}}
\item{\verb{gc}}{a \code{\link{GdkGC}}}
\item{\verb{matrix}}{a \code{\link{PangoMatrix}}, or \code{NULL} to use an identity transformation. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{font}}{the font in which to draw the string}
\item{\verb{x}}{the x position of the start of the string (in Pango
units in user space coordinates)}
\item{\verb{y}}{the y position of the baseline (in Pango units
in user space coordinates)}
\item{\verb{glyphs}}{the glyph string to draw}
}
\details{See also \code{\link{gdkDrawGlyphs}}, \code{\link{gdkDrawLayout}}.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
