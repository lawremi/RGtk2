\alias{cairoToyFontFaceCreate}
\name{cairoToyFontFaceCreate}
\title{cairoToyFontFaceCreate}
\description{Creates a font face from a triplet of family, slant, and weight.
These font faces are used in implementation of the the \code{\link{Cairo}} "toy"
font API.}
\usage{cairoToyFontFaceCreate(family, slant, weight)}
\arguments{
\item{\verb{family}}{[char]  a font family name, encoded in UTF-8}
\item{\verb{slant}}{[\code{\link{CairoFontSlant}}]  the slant for the font}
\item{\verb{weight}}{[\code{\link{CairoFontWeight}}]  the weight for the font}
}
\details{If \code{family} is the zero-length string "", the platform-specific default
family is assumed.  The default family then can be queried using
\code{\link{cairoToyFontFaceGetFamily}}.
  
The \code{\link{cairoSelectFontFace}} function uses this to create font faces.
See that function for limitations of toy font faces.  
  Since 1.8}
\value{[\code{\link{CairoFontFace}}]  a newly created \code{\link{CairoFontFace}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
