\alias{pangoCairoGlyphStringPath}
\name{pangoCairoGlyphStringPath}
\title{pangoCairoGlyphStringPath}
\description{Adds the glyphs in \code{glyphs} to the current path in the specified
cairo context. The origin of the glyphs (the left edge of the baseline)
will be at the current point of the cairo context.}
\usage{pangoCairoGlyphStringPath(cr, font, glyphs)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a Cairo context}
\item{\verb{font}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}} from a \code{\link{PangoCairoFontMap}}}
\item{\verb{glyphs}}{[\code{\link{PangoGlyphString}}]  a \code{\link{PangoGlyphString}}}
}
\details{  Since 1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
