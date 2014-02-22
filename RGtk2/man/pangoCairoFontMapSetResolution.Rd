\alias{pangoCairoFontMapSetResolution}
\name{pangoCairoFontMapSetResolution}
\title{pangoCairoFontMapSetResolution}
\description{Sets the resolution for the fontmap. This is a scale factor between
points specified in a \code{\link{PangoFontDescription}} and Cairo units. The
default value is 96, meaning that a 10 point font will be 13
units high. (10 * 96. / 72. = 13.3).}
\usage{pangoCairoFontMapSetResolution(object, dpi)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoCairoFontMap}}]  a \code{\link{PangoCairoFontMap}}}
\item{\verb{dpi}}{[numeric]  the resolution in "dots per inch". (Physical inches aren't actually
  involved; the terminology is conventional.)}
}
\details{  Since 1.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
