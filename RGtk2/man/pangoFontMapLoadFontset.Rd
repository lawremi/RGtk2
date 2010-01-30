\alias{pangoFontMapLoadFontset}
\name{pangoFontMapLoadFontset}
\title{pangoFontMapLoadFontset}
\description{Load a set of fonts in the fontmap that can be used to render
a font matching \code{desc}.}
\usage{pangoFontMapLoadFontset(object, context, desc, language)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontMap}}]  a \verb{\link{PangoFontMap}}}
\item{\verb{context}}{[\verb{\link{PangoContext}}]  the \verb{\link{PangoContext}} the font will be used with}
\item{\verb{desc}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}} describing the font to load}
\item{\verb{language}}{[\verb{\link{PangoLanguage}}]  a \verb{\link{PangoLanguage}} the fonts will be used for}
}
\value{[\verb{\link{PangoFontset}}]  the fontset, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
