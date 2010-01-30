\alias{pangoCairoFontMapNew}
\name{pangoCairoFontMapNew}
\title{pangoCairoFontMapNew}
\description{Creates a new \verb{\link{PangoCairoFontMap}} object; a fontmap is used
to cache information about available fonts, and holds
certain global parameters such as the resolution.
In most cases, you can use \code{\link{pangoCairoFontMapGetDefault}}
instead.}
\usage{pangoCairoFontMapNew()}
\details{Note that the type of the returned object will depend
on the particular font backend Cairo was compiled to use;
You generally should only use the \verb{\link{PangoFontMap}} and
\verb{\link{PangoCairoFontMap}} interfaces on the returned object.  

  Since  1.10}
\value{[\verb{\link{PangoFontMap}}]  the newly allocated \verb{\link{PangoFontMap}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
