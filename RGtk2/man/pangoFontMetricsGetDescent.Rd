\alias{pangoFontMetricsGetDescent}
\name{pangoFontMetricsGetDescent}
\title{pangoFontMetricsGetDescent}
\description{Gets the descent from a font metrics structure. The descent is
the distance from the baseline to the logical bottom of a line
of text. (The logical bottom may be above or below the bottom of the
actual drawn ink. It is necessary to lay out the text to figure
where the ink will be.)}
\usage{pangoFontMetricsGetDescent(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} structure}}
\value{[integer]  the descent, in Pango units.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
