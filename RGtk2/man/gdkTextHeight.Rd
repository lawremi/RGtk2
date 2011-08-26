\alias{gdkTextHeight}
\name{gdkTextHeight}
\title{gdkTextHeight}
\description{
Determines the total height of a given string.
This value is not generally useful, because you cannot
determine how this total height will be drawn in
relation to the baseline. See \code{\link{gdkTextExtents}}.
\strong{WARNING: \code{gdk_text_height} is deprecated and should not be used in newly-written code.}
}
\usage{gdkTextHeight(object, text, text.length = -1)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{text}}{the text to measure.}
\item{\verb{text.length}}{the length of the text in bytes.}
}
\value{[integer] the height of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
