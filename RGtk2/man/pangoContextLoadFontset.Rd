\alias{pangoContextLoadFontset}
\name{pangoContextLoadFontset}
\title{pangoContextLoadFontset}
\description{Load a set of fonts in the context that can be used to render
a font matching \code{desc}.}
\usage{pangoContextLoadFontset(object, desc, language)}
\arguments{
\item{\verb{object}}{a \code{\link{PangoContext}}}
\item{\verb{desc}}{a \code{\link{PangoFontDescription}} describing the fonts to load}
\item{\verb{language}}{a \code{\link{PangoLanguage}} the fonts will be used for}
}
\value{[\code{\link{PangoFontset}}]  the fontset, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
