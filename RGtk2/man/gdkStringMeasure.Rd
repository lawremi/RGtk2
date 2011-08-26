\alias{gdkStringMeasure}
\name{gdkStringMeasure}
\title{gdkStringMeasure}
\description{
Determines the distance from the origin to the rightmost
portion of a string when drawn. This is not the
correct value for determining the origin of the next
portion when drawing text in multiple pieces.
See \code{\link{gdkStringWidth}}.
\strong{WARNING: \code{gdk_string_measure} is deprecated and should not be used in newly-written code.}
}
\usage{gdkStringMeasure(object, string)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{string}}{the string to measure.}
}
\value{[integer] the right bearing of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
