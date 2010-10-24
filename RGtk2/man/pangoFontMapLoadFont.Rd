\alias{pangoFontMapLoadFont}
\name{pangoFontMapLoadFont}
\title{pangoFontMapLoadFont}
\description{Load the font in the fontmap that is the closest match for \code{desc}.}
\usage{pangoFontMapLoadFont(object, context, desc)}
\arguments{
\item{\verb{object}}{a \code{\link{PangoFontMap}}}
\item{\verb{context}}{the \code{\link{PangoContext}} the font will be used with}
\item{\verb{desc}}{a \code{\link{PangoFontDescription}} describing the font to load}
}
\value{[\code{\link{PangoFont}}]  the font loaded, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
