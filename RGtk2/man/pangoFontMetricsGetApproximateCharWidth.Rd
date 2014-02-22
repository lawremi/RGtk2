\alias{pangoFontMetricsGetApproximateCharWidth}
\name{pangoFontMetricsGetApproximateCharWidth}
\title{pangoFontMetricsGetApproximateCharWidth}
\description{Gets the approximate character width for a font metrics structure.
This is merely a representative value useful, for example, for
determining the initial size for a window. Actual characters in
text will be wider and narrower than this.}
\usage{pangoFontMetricsGetApproximateCharWidth(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} structure}}
\value{[integer]  the character width, in Pango units.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
