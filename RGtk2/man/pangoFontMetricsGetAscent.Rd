\alias{pangoFontMetricsGetAscent}
\name{pangoFontMetricsGetAscent}
\title{pangoFontMetricsGetAscent}
\description{Gets the ascent from a font metrics structure. The ascent is
the distance from the baseline to the logical top of a line
of text. (The logical top may be above or below the top of the
actual drawn ink. It is necessary to lay out the text to figure
where the ink will be.)}
\usage{pangoFontMetricsGetAscent(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} structure}}
\value{[integer]  the ascent, in pango units. (1 point == \code{PANGO_SCALE} pango units.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
