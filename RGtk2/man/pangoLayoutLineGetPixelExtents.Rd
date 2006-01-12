\alias{pangoLayoutLineGetPixelExtents}
\name{pangoLayoutLineGetPixelExtents}
\title{pangoLayoutLineGetPixelExtents}
\description{Computes the logical and ink extents of a layout line. See the documentation
for \code{\link{pangoFontGetGlyphExtents}} for details about the interpretation
of the rectangles. The returned rectangles are in device units, as
opposed to \code{\link{pangoLayoutLineGetExtents}}, which returns the extents in
\code{integer}.}
\usage{pangoLayoutLineGetPixelExtents(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayoutLine}}]  a \code{\link{PangoLayoutLine}}}}
\value{
A list containing the following elements:
\item{\code{ink.rect}}{[\code{\link{PangoRectangle}}]     rectangle used to store the extents of the glyph string as drawn
              or \code{NULL} to indicate that the result is not needed.}
\item{\code{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph string
              or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
