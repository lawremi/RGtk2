\alias{pangoContextLoadFontset}
\name{pangoContextLoadFontset}
\title{pangoContextLoadFontset}
\description{Load a set of fonts in the context that can be used to render
a font matching \code{desc}.}
\usage{pangoContextLoadFontset(object, desc, language)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoContext}}]  a \verb{\link{PangoContext}}}
\item{\verb{desc}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}} describing the fonts to load}
\item{\verb{language}}{[\verb{\link{PangoLanguage}}]  a \verb{\link{PangoLanguage}} the fonts will be used for}
}
\value{[\verb{\link{PangoFontset}}]  the fontset, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
