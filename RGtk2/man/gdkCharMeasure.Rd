\alias{gdkCharMeasure}
\name{gdkCharMeasure}
\title{gdkCharMeasure}
\description{
Determines the distance from the origin to the rightmost
portion of a character when drawn. This is not the
correct value for determining the origin of the next
portion when drawing text in multiple pieces.
\strong{WARNING: \code{gdk_char_measure} is deprecated and should not be used in newly-written code.}
}
\usage{gdkCharMeasure(object, character)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{character}}{the character to measure.}
}
\value{[integer] the right bearing of the character in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
