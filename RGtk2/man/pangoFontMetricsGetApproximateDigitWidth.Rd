\alias{pangoFontMetricsGetApproximateDigitWidth}
\name{pangoFontMetricsGetApproximateDigitWidth}
\title{pangoFontMetricsGetApproximateDigitWidth}
\description{Gets the approximate digit width for a font metrics structure.
This is merely a representative value useful, for example, for
determining the initial size for a window. Actual digits in
text can be wider and narrower than this, though this value
is generally somewhat more accurate than the result of
\code{\link{pangoFontMetricsGetApproximateDigitWidth}}.}
\usage{pangoFontMetricsGetApproximateDigitWidth(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} structure}}
\value{[integer]  the digit width, in pango units. (1 point == \code{PANGO_SCALE} pango units.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
