\alias{pangoFontDescriptionGetFamily}
\name{pangoFontDescriptionGetFamily}
\title{pangoFontDescriptionGetFamily}
\description{Gets the family name field of a font description. See
\code{\link{pangoFontDescriptionSetFamily}}.}
\usage{pangoFontDescriptionGetFamily(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}.}}
\value{[char]  the family name field for the font description, or
              \code{NULL} if not previously set.  This has the same life-time
              as the font description itself and should not be freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
