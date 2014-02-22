\alias{pangoGlyphStringExtents}
\name{pangoGlyphStringExtents}
\title{pangoGlyphStringExtents}
\description{Compute the logical and ink extents of a glyph string. See the documentation
for \code{\link{pangoFontGetGlyphExtents}} for details about the interpretation
of the rectangles.}
\usage{pangoGlyphStringExtents(object, font)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoGlyphString}}]    a \code{\link{PangoGlyphString}}}
\item{\verb{font}}{[\code{\link{PangoFont}}]      a \code{\link{PangoFont}}}
}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the glyph string as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph string
           or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
