\alias{pangoContextSetFontMap}
\name{pangoContextSetFontMap}
\title{pangoContextSetFontMap}
\description{Sets the font map to be searched when fonts are looked-up in this context.
This is only for internal use by Pango backends, a \code{\link{PangoContext}} obtained
via one of the recommended methods should already have a suitable font map.}
\usage{pangoContextSetFontMap(object, font.map)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}
\item{\verb{font.map}}{[\code{\link{PangoFontMap}}]  the \code{\link{PangoFontMap}} to set.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
