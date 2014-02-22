\alias{pangoFontDescriptionGetSize}
\name{pangoFontDescriptionGetSize}
\title{pangoFontDescriptionGetSize}
\description{Gets the size field of a font description.
See \code{\link{pangoFontDescriptionSetSize}}.}
\usage{pangoFontDescriptionGetSize(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}}
\value{[integer]  the size field for the font description in points or device units.
  You must call \code{\link{pangoFontDescriptionGetSizeIsAbsolute}}
  to find out which is the case. Returns 0 if the size field has not
  previously been set or it has been set to 0 explicitly.
  Use \code{\link{pangoFontDescriptionGetSetFields}} to
  find out if the field was explicitly set or not.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
