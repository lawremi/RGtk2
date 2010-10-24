\alias{gdkTextExtentsWc}
\name{gdkTextExtentsWc}
\title{gdkTextExtentsWc}
\description{
Gets the metrics of a string of wide characters.
\strong{WARNING: \code{gdk_text_extents_wc} is deprecated and should not be used in newly-written code.}
}
\usage{gdkTextExtentsWc(object, text)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkFont}}}
\item{\verb{text}}{the text to measure.}
}
\value{
A list containing the following elements:
\item{\verb{lbearing}}{the left bearing of the string.}
\item{\verb{rbearing}}{the right bearing of the string.}
\item{\verb{width}}{the width of the string.}
\item{\verb{ascent}}{the ascent of the string.}
\item{\verb{descent}}{the descent of the string.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
