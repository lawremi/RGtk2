\alias{pangoLayoutLineGetExtents}
\name{pangoLayoutLineGetExtents}
\title{pangoLayoutLineGetExtents}
\description{Computes the logical and ink extents of a layout line. See
\code{\link{pangoFontGetGlyphExtents}} for details about the interpretation
of the rectangles.}
\usage{pangoLayoutLineGetExtents(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayoutLine}}]      a \code{\link{PangoLayoutLine}}}}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the glyph string
           as drawn, or \code{NULL}}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph
           string, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
