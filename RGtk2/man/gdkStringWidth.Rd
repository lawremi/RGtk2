\alias{gdkStringWidth}
\name{gdkStringWidth}
\title{gdkStringWidth}
\description{
Determines the width of a string.
(The distance from the origin of the string to the 
point where the next string in a sequence of strings
should be drawn)
\strong{WARNING: \code{gdk_string_width} is deprecated and should not be used in newly-written code.}
}
\usage{gdkStringWidth(object, string)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkFont}}]   a \verb{\link{GdkFont}}}
\item{\verb{string}}{[character]  the string to measure}
}
\value{[integer]  the width of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
