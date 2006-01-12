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
\item{\code{drawable}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}}}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}}
\item{\code{matrix}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}, or \code{NULL} to use an identity transformation}
\item{\code{font}}{[\code{\link{PangoFont}}]  the font in which to draw the string}
\item{\code{x}}{[integer]        the x position of the start of the string (in Pango
          units in user space coordinates)}
\item{\code{y}}{[integer]        the y position of the baseline (in Pango units
          in user space coordinates)}
\item{\code{glyphs}}{[\code{\link{PangoGlyphString}}]   the glyph string to draw}
}
\details{See also \code{\link{gdkDrawGlyphs}}, \code{\link{gdkDrawLayout}}.  

  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
