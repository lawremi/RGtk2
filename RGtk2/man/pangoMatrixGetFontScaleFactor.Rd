\alias{pangoMatrixGetFontScaleFactor}
\name{pangoMatrixGetFontScaleFactor}
\title{pangoMatrixGetFontScaleFactor}
\description{Returns the scale factor of a matrix on the height of the font.
That is, the scale factor in the direction perpendicular to the
vector that the X coordinate is mapped to.}
\usage{pangoMatrixGetFontScaleFactor(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoMatrix}}]  a \code{\link{PangoMatrix}}, may be \code{NULL}}}
\details{  Since 1.12}
\value{[numeric]  the scale factor of \code{matrix} on the height of the font,
or 1.0 if \code{matrix} is \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
