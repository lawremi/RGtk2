\alias{pangoFontFamilyIsMonospace}
\name{pangoFontFamilyIsMonospace}
\title{pangoFontFamilyIsMonospace}
\description{A monospace font is a font designed for text display where the the
characters form a regular grid. For Western languages this would
mean that the advance width of all characters are the same, but
this categorization also includes Asian fonts which include
double-width characters: characters that occupy two grid cells.
\code{gUnicharIswide()} returns a result that indicates whether a
character is typically double-width in a monospace font.}
\usage{pangoFontFamilyIsMonospace(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontFamily}}]  a \code{\link{PangoFontFamily}}}}
\details{The best way to find out the grid-cell size is to call
\code{\link{pangoFontMetricsGetApproximateDigitWidth}}, since the results
of \code{\link{pangoFontMetricsGetApproximateCharWidth}} may be affected
by double-width characters.  
  Since 1.4}
\value{[logical] \code{TRUE} if the family is monospace.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
