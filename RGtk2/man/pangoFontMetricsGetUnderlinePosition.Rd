\alias{pangoFontMetricsGetUnderlinePosition}
\name{pangoFontMetricsGetUnderlinePosition}
\title{pangoFontMetricsGetUnderlinePosition}
\description{Gets the suggested position to draw the underline.
The value returned is the distance \emph{above} the
baseline of the top of the underline. Since most fonts have
underline positions beneath the baseline, this value is typically
negative.}
\usage{pangoFontMetricsGetUnderlinePosition(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontMetrics}}]  a \code{\link{PangoFontMetrics}} structure}}
\details{  Since 1.6}
\value{[integer]  the suggested underline position, in Pango units.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
