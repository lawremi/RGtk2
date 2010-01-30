\alias{pangoCairoFontMapGetDefault}
\name{pangoCairoFontMapGetDefault}
\title{pangoCairoFontMapGetDefault}
\description{Gets a default \verb{\link{PangoCairoFontMap}} to use with Cairo.}
\usage{pangoCairoFontMapGetDefault()}
\details{Note that the type of the returned object will depend
on the particular font backend Cairo was compiled to use;
You generally should only use the \verb{\link{PangoFontMap}} and
\verb{\link{PangoCairoFontMap}} interfaces on the returned object.  

  Since  1.10}
\value{[\verb{\link{PangoFontMap}}]  the default Cairo fontmap for \verb{\link{Pango}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
