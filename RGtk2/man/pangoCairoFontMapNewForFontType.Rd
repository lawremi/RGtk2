\alias{pangoCairoFontMapNewForFontType}
\name{pangoCairoFontMapNewForFontType}
\title{pangoCairoFontMapNewForFontType}
\description{Creates a new \code{\link{PangoCairoFontMap}} object of the type suitable
to be used with cairo font backend of type \code{fonttype}.}
\usage{pangoCairoFontMapNewForFontType(fonttype)}
\arguments{\item{\verb{fonttype}}{[\code{\link{CairoFontType}}]  desired \code{\link{CairoFontType}}}}
\details{In most cases one should simply use @\code{\link{pangoCairoFontMapNew}},
or in fact in most of those cases, just use
@\code{\link{pangoCairoFontMapGetDefault}}.  
  Since 1.18}
\value{[\code{\link{PangoFontMap}}] 
              or \code{NULL} if the requested cairo font backend is
              not supported / compiled in.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
