\alias{pangoCairoFontMapSetDefault}
\name{pangoCairoFontMapSetDefault}
\title{pangoCairoFontMapSetDefault}
\description{Sets a default \code{\link{PangoCairoFontMap}} to use with Cairo.}
\usage{pangoCairoFontMapSetDefault(fontmap)}
\arguments{\item{\verb{fontmap}}{[\code{\link{PangoCairoFontMap}}]  The new default font map, or \code{NULL}}}
\details{This can be used to change the Cairo font backend that the
default fontmap uses for example.  The old default font map
is unreffed and the new font map referenced.
  
A value of \code{NULL} for \code{fontmap} will cause the current default
font map to be released and a new default font
map to be created on demand, using \code{\link{pangoCairoFontMapNew}}.  
  Since 1.22}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
