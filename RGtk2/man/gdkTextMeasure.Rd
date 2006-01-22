\alias{gdkTextMeasure}
\name{gdkTextMeasure}
\title{gdkTextMeasure}
\description{
Determines the distance from the origin to the rightmost
portion of a string when drawn. This is not the
correct value for determining the origin of the next
portion when drawing text in multiple pieces. 
See \code{\link{gdkTextWidth}}.
\strong{WARNING: \code{gdk_text_measure} is deprecated and should not be used in newly-written code.  
Determines the distance from the origin to the rightmost
portion of a string when drawn. This is not the
correct value for determining the origin of the next
portion when drawing text in multiple pieces. 
See \code{\link{gdkTextWidth}}.  }
}
\usage{gdkTextMeasure(object, text, text.length = -1)}
\arguments{
\item{\code{object}}{[\code{\link{GdkFont}}]  a \code{\link{GdkFont}}}
\item{\code{text}}{[character]  the text to measure.}
\item{\code{text.length}}{[integer]  the length of the text in bytes.}
}
\value{[integer]  the right bearing of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
