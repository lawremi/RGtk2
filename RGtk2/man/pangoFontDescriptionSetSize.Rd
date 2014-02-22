\alias{pangoFontDescriptionSetSize}
\name{pangoFontDescriptionSetSize}
\title{pangoFontDescriptionSetSize}
\description{Sets the size field of a font description in fractional points. This is mutually
exclusive with \code{\link{pangoFontDescriptionSetAbsoluteSize}}.}
\usage{pangoFontDescriptionSetSize(object, size)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\verb{size}}{[integer]  the size of the font in points, scaled by PANGO_SCALE. (That is,
       a \code{size} value of 10 * PANGO_SCALE is a 10 point font. The conversion
       factor between points and device units depends on system configuration
       and the output device. For screen display, a logical DPI of 96 is
       common, in which case a 10 point font corresponds to a 10 * (96 / 72) = 13.3
       pixel font. Use \code{\link{pangoFontDescriptionSetAbsoluteSize}} if you need
       a particular size in device units.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
