\alias{pangoFontMapLoadFontset}
\name{pangoFontMapLoadFontset}
\title{pangoFontMapLoadFontset}
\description{Load a set of fonts in the fontmap that can be used to render
a font matching \code{desc}.}
\usage{pangoFontMapLoadFontset(object, context, desc, language)}
\arguments{
\item{\verb{object}}{a \code{\link{PangoFontMap}}}
\item{\verb{context}}{the \code{\link{PangoContext}} the font will be used with}
\item{\verb{desc}}{a \code{\link{PangoFontDescription}} describing the font to load}
\item{\verb{language}}{a \code{\link{PangoLanguage}} the fonts will be used for}
}
\value{[\code{\link{PangoFontset}}]  the fontset, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
