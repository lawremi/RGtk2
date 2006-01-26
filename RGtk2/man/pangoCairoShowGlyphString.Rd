\alias{pangoCairoShowGlyphString}
\name{pangoCairoShowGlyphString}
\title{pangoCairoShowGlyphString}
\description{Draws the glyphs in \code{glyphs} in the specified cairo context.
The origin of the glyphs (the left edge of the baseline) will
be drawn at the current point of the cairo context.}
\usage{pangoCairoShowGlyphString(cr, font, glyphs)}
\arguments{
\item{\code{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\code{font}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}}
\item{\code{glyphs}}{[\code{\link{PangoGlyphString}}]  a \code{\link{PangoGlyphString}}}
}
\details{  Since  1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
