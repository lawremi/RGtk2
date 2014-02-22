\alias{pangoGlyphStringExtentsRange}
\name{pangoGlyphStringExtentsRange}
\title{pangoGlyphStringExtentsRange}
\description{Computes the extents of a sub-portion of a glyph string. The extents are
relative to the start of the glyph string range (the origin of their
coordinate system is at the start of the range, not at the start of the entire
glyph string).}
\usage{pangoGlyphStringExtentsRange(object, start, end, font)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoGlyphString}}]    a \code{\link{PangoGlyphString}}}
\item{\verb{start}}{[integer]     start index}
\item{\verb{end}}{[integer]       end index (the range is the set of bytes with
	      indices such that start <= index < end)}
\item{\verb{font}}{[\code{\link{PangoFont}}]      a \code{\link{PangoFont}}}
}
\value{
A list containing the following elements:
\item{\verb{ink.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the extents of the glyph string range as drawn
           or \code{NULL} to indicate that the result is not needed.}
\item{\verb{logical.rect}}{[\code{\link{PangoRectangle}}]  rectangle used to store the logical extents of the glyph string range
           or \code{NULL} to indicate that the result is not needed.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
