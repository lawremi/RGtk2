\alias{gdkStringExtents}
\name{gdkStringExtents}
\title{gdkStringExtents}
\description{
Gets the metrics of a string.
\strong{WARNING: \code{gdk_string_extents} is deprecated and should not be used in newly-written code.}
}
\usage{gdkStringExtents(object, string)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkFont}}]  a \verb{\link{GdkFont}}.}
\item{\verb{string}}{[character]  the string to measure.}
}
\value{
A list containing the following elements:
\item{\verb{lbearing}}{[integer]  the left bearing of the string.}
\item{\verb{rbearing}}{[integer]  the right bearing of the string.}
\item{\verb{width}}{[integer]  the width of the string.}
\item{\verb{ascent}}{[integer]  the ascent of the string.}
\item{\verb{descent}}{[integer]  the descent of the string.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
