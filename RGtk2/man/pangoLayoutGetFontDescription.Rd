\alias{pangoLayoutGetFontDescription}
\name{pangoLayoutGetFontDescription}
\title{pangoLayoutGetFontDescription}
\description{Gets the font description for the layout, if any.}
\usage{pangoLayoutGetFontDescription(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayout}}]  a \verb{\link{PangoLayout}}}}
\details{  Since  1.8}
\value{[\verb{\link{PangoFontDescription}}]  a pointer to the layout's font description,
 or \code{NULL} if the font description from the layout's
 context is inherited.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
