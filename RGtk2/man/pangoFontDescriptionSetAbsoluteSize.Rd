\alias{pangoFontDescriptionSetAbsoluteSize}
\name{pangoFontDescriptionSetAbsoluteSize}
\title{pangoFontDescriptionSetAbsoluteSize}
\description{Sets the size field of a font description, in device units. This is mutually
exclusive with \code{\link{pangoFontDescriptionSetSize}} which sets the font size
in points.}
\usage{pangoFontDescriptionSetAbsoluteSize(object, size)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\verb{size}}{[numeric]  the new size, in Pango units. There are \code{PANGO_SCALE} Pango units in one
  device unit. For an output backend where a device unit is a pixel, a \code{size}
  value of 10 * PANGO_SCALE gives a 10 pixel font.}
}
\details{  Since 1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
