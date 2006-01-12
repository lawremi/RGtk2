\alias{pangoFontGetGlyphExtents}
\name{pangoFontGetGlyphExtents}
\title{pangoFontGetGlyphExtents}
\description{Gets the logical and ink extents of a glyph within a font. The
coordinate system for each rectangle has its origin at the
base line and horizontal origin of the character with increasing
coordinates extending to the right and down. The functions \code{pangoAscent()},
\code{pangoDescent()}, \code{pangoLbearing()}, and \code{pangoRbearing()} can be used to convert
from the extents rectangle to more traditional font metrics. The units
of the rectangles are in 1/PANGO_SCALE of a device unit.}
\usage{pangoFontGetGlyphExtents(object, glyph)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}}
\item{\code{glyph}}{[numeric]  the glyph index}
}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the glyph as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph
           or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
