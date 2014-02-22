\alias{pangoFontMetricsGetApproximateDigitWidth}
\name{pangoFontMetricsGetApproximateDigitWidth}
\title{pangoFontMetricsGetApproximateDigitWidth}
\description{Gets the approximate digit width for a font metrics structure.
This is merely a representative value useful, for example, for
determining the initial size for a window. Actual digits in
text can be wider or narrower than this, though this value
is generally somewhat more accurate than the result of
\code{\link{pangoFontMetricsGetApproximateCharWidth}} for digits.}
\usage{pangoFontMetricsGetApproximateDigitWidth(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} structure}}
\value{[integer]  the digit width, in Pango units.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
