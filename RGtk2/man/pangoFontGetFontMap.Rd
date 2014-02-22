\alias{pangoFontGetFontMap}
\name{pangoFontGetFontMap}
\title{pangoFontGetFontMap}
\description{Gets the font map for which the font was created.}
\usage{pangoFontGetFontMap(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}, or \code{NULL}}}
\details{Note that the font maintains a \dfn{weak} reference
to the font map, so if all references to font map are dropped, the font
map will be finalized even if there are fonts created with the font
map that are still alive.  In that case this function will return \code{NULL}.
It is the responsibility of the user to ensure that the font map is kept
alive.  In most uses this is not an issue as a \code{\link{PangoContext}} holds
a reference to the font map.  
  Since 1.10}
\value{[\code{\link{PangoFontMap}}]  the \code{\link{PangoFontMap}} for the font, or \code{NULL} if \code{font} is \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
