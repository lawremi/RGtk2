\alias{pangoFontMapLoadFont}
\name{pangoFontMapLoadFont}
\title{pangoFontMapLoadFont}
\description{Load the font in the fontmap that is the closest match for \code{desc}.}
\usage{pangoFontMapLoadFont(object, context, desc)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontMap}}]  a \verb{\link{PangoFontMap}}}
\item{\verb{context}}{[\verb{\link{PangoContext}}]  the \verb{\link{PangoContext}} the font will be used with}
\item{\verb{desc}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}} describing the font to load}
}
\value{[\verb{\link{PangoFont}}]  the font loaded, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
