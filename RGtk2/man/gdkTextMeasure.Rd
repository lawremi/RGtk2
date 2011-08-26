\alias{gdkTextMeasure}
\name{gdkTextMeasure}
\title{gdkTextMeasure}
\description{
Determines the distance from the origin to the rightmost
portion of a string when drawn. This is not the
correct value for determining the origin of the next
portion when drawing text in multiple pieces. 
See \code{\link{gdkTextWidth}}.
\strong{WARNING: \code{gdk_text_measure} is deprecated and should not be used in newly-written code.}
}
\usage{gdkTextMeasure(object, text, text.length = -1)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{text}}{the text to measure.}
\item{\verb{text.length}}{the length of the text in bytes.}
}
\value{[integer] the right bearing of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
