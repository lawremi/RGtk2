\alias{pangoCairoFontMapGetDefault}
\name{pangoCairoFontMapGetDefault}
\title{pangoCairoFontMapGetDefault}
\description{Gets a default \code{\link{PangoCairoFontMap}} to use with Cairo.}
\usage{pangoCairoFontMapGetDefault()}
\details{Note that the type of the returned object will depend
on the particular font backend Cairo was compiled to use;
You generally should only use the \code{\link{PangoFontMap}} and
\code{\link{PangoCairoFontMap}} interfaces on the returned object.  

  Since  1.10}
\value{[\code{\link{PangoFontMap}}]  the default Cairo fontmap for \code{\link{Pango}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
