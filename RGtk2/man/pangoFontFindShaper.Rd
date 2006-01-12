\alias{pangoFontFindShaper}
\name{pangoFontFindShaper}
\title{pangoFontFindShaper}
\description{Finds the best matching shaper for a font for a particular
language tag and character point.}
\usage{pangoFontFindShaper(object, language, ch)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFont}}]  a \code{\link{PangoFont}}}
\item{\code{language}}{[\code{\link{PangoLanguage}}]  the language tag}
\item{\code{ch}}{[numeric]  the ISO-10646 character code.}
}
\value{[PangoEngineShape]  the best matching shaper.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
