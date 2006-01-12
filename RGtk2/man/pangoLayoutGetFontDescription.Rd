\alias{pangoLayoutGetFontDescription}
\name{pangoLayoutGetFontDescription}
\title{pangoLayoutGetFontDescription}
\description{Gets the font description for the layout, if any.}
\usage{pangoLayoutGetFontDescription(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\value{[\code{\link{PangoFontDescription}}]  a pointer to the layout's font description,
 or \code{NULL} if the font description from the layout's
 context is inherited.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
