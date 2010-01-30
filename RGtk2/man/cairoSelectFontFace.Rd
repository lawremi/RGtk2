\alias{cairoSelectFontFace}
\name{cairoSelectFontFace}
\title{cairoSelectFontFace}
\description{Selects a family and style of font from a simplified description as
a family name, slant and weight. This function is meant to be used
only for applications with simple font needs: Cairo doesn't provide
for operations such as listing all available fonts on the system,
and it is expected that most applications will need to use a more
comprehensive font handling and text layout library in addition to
cairo.}
\usage{cairoSelectFontFace(cr, family, slant, weight)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a \verb{\link{Cairo}}}
\item{\verb{family}}{[char]  a font family name, encoded in UTF-8}
\item{\verb{slant}}{[\verb{\link{CairoFontSlant}}]  the slant for the font}
\item{\verb{weight}}{[\verb{\link{CairoFontWeight}}]  the weight for the font}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
