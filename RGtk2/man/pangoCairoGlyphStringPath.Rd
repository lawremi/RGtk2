\alias{pangoCairoGlyphStringPath}
\name{pangoCairoGlyphStringPath}
\title{pangoCairoGlyphStringPath}
\description{Adds the glyphs in \code{glyphs} to the current path in the specified
cairo context. The origin of the glyphs (the left edge of the baseline)
will be at the current point of the cairo context.}
\usage{pangoCairoGlyphStringPath(cr, font, glyphs)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a Cairo context}
\item{\verb{font}}{[\verb{\link{PangoFont}}]  a \verb{\link{PangoFont}} from a \verb{\link{PangoCairoFontMap}}}
\item{\verb{glyphs}}{[\verb{\link{PangoGlyphString}}]  a \verb{\link{PangoGlyphString}}}
}
\details{  Since  1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
