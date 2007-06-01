\alias{pangoLayoutGetUnknownGlyphsCount}
\name{pangoLayoutGetUnknownGlyphsCount}
\title{pangoLayoutGetUnknownGlyphsCount}
\description{Counts the number unknown glyphs in \code{layout}.  That is, zero if
glyphs for all characters in the layout text were found, or more
than zero otherwise.}
\usage{pangoLayoutGetUnknownGlyphsCount(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{  Since  1.16}
\value{[integer]  The number of unknown glyphs in \code{layout}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
