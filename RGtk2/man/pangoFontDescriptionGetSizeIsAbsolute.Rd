\alias{pangoFontDescriptionGetSizeIsAbsolute}
\name{pangoFontDescriptionGetSizeIsAbsolute}
\title{pangoFontDescriptionGetSizeIsAbsolute}
\description{Determines whether the size of the font is in points or device units.
See \code{\link{pangoFontDescriptionSetSize}} and \code{\link{pangoFontDescriptionSetAbsoluteSize}}.}
\usage{pangoFontDescriptionGetSizeIsAbsolute(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}}
\details{  Since  1.8}
\value{[logical]  whether the size for the font description is in
  points or device units.  Use \code{\link{pangoFontDescriptionGetSetFields}} to
  find out if the size field of the font description was explicitely set or not.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
