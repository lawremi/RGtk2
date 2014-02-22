\alias{pangoContextLoadFont}
\name{pangoContextLoadFont}
\title{pangoContextLoadFont}
\description{Loads the font in one of the fontmaps in the context
that is the closest match for \code{desc}.}
\usage{pangoContextLoadFont(object, desc)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}
\item{\verb{desc}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}} describing the font to load}
}
\value{[\code{\link{PangoFont}}]  the font loaded, or \code{NULL} if no font matched.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
