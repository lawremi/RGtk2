\alias{gdkTextWidth}
\name{gdkTextWidth}
\title{gdkTextWidth}
\description{
Determines the width of a given string.
\strong{WARNING: \code{gdk_text_width} is deprecated and should not be used in newly-written code.}
}
\usage{gdkTextWidth(object, text, text.length = -1)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}}
\item{\verb{text}}{[character]  the text to measure.}
\item{\verb{text.length}}{[integer]  the length of the text in bytes.}
}
\value{[integer]  the width of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
