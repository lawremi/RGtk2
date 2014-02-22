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
\item{\verb{object}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}}
\item{\verb{glyph}}{[numeric]  the glyph index}
}
\details{If \code{font} is \code{NULL}, this function gracefully sets some sane values in the
output variables and returns.  }
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the glyph as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph
           or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
