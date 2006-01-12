\alias{cairoGlyphExtents}
\name{cairoGlyphExtents}
\title{cairoGlyphExtents}
\description{Gets the extents for a list of glyphs. The extents describe a
user-space rectangle that encloses the "inked" portion of the
glyphs, (as they would be drawn by \code{\link{cairoShowGlyphs}}).
Additionally, the x_advance and y_advance values indicate the
amount by which the current point would be advanced by
cairo_show_glyphs.}
\usage{cairoGlyphExtents(cr, glyphs)}
\arguments{
\item{\code{cr}}{[\code{\link{cairo_t}}]  a \code{\link{cairo_t}}}
\item{\code{glyphs}}{[\code{\link{cairo_glyph_t}}]  a list of \code{\link{cairo_glyph_t}} objects}
}
\details{Note that whitespace glyphs do not contribute to the size of the
rectangle (extents.width and extents.height).  }
\value{
A list containing the following elements:
\item{\code{extents}}{[\code{\link{cairo_text_extents_t}}]  a \code{\link{cairo_text_extents_t}} object into which the results
will be stored}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
