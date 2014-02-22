\alias{pangoAttrFallbackNew}
\name{pangoAttrFallbackNew}
\title{pangoAttrFallbackNew}
\description{Create a new font fallback attribute.}
\usage{pangoAttrFallbackNew(fallback)}
\arguments{\item{\verb{fallback}}{[logical] \code{TRUE} if we should fall back on other fonts
                  for characters the active font is missing.}}
\details{If fallback is disabled, characters will only be used from the
closest matching font on the system. No fallback will be done to
other fonts on the system that might contain the characters in the
text.  
  Since 1.4}
\value{[\code{\link{PangoAttribute}}]  the newly allocated \code{\link{PangoAttribute}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
