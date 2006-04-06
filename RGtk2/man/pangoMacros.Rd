\alias{pangoAscent}
\alias{pangoDescent}
\alias{pangoLbearing}
\alias{pangoRbearing}
\alias{pangoScale}
\alias{pangoPixels}
\alias{pangoScaleLarge}
\alias{pangoScaleMedium}
\alias{pangoScaleSmall}
\alias{pangoScaleXLarge}
\alias{pangoScaleXSmall}
\alias{pangoScaleXXLarge}
\alias{pangoScaleXXSmall}
\name{pangoMacros}
\title{Pango Convenience Macros}
\description{These macros and constants help you layout text with Pango.}
\usage{
pangoAscent(x)
pangoDescent(x)
pangoLbearing(x)
pangoRbearing(x)
pangoScale
pangoPixels(size)
pangoScaleLarge
pangoScaleMedium
pangoScaleSmall
pangoScaleXLarge
pangoScaleXSmall
pangoScaleXXLarge
pangoScaleXXSmall
}
\parameters{
\item{x}{A rectangle describing the glyph extents}
\item{size}{A size on the Pango scale}.
}
\value{
The requested quantity in the units of the provided rectangle.
}
\details{When positioning text, it is beneficial to know the extents of
the glyphs being drawn. The macros \code{pangoAscent}, \code{pangoDescent},
\code{pangoLbearing}, and \code{pangoRbearing} perform simple math on the 
given rectangle (representing the glyph extents) to determine the corresponding
properties. The "ascent" and "descent" are how high the glyph extends above and 
below the baseline, respectively. The "lbearing" and "rbearing" describe the 
left-most and right-most extents of the glyph.

The rest are merely constants for scaling. \code{pangoScale} is the factor by 
which device units are scaled to Pango units. To return to device units, use 
the \code{pangoPixels}. The rest are pre-fab factors 
for scaling by different degrees.
}
\author{Michael Lawrence}
\keyword{internal}
