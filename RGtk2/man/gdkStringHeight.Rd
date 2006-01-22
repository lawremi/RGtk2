\alias{gdkStringHeight}
\name{gdkStringHeight}
\title{gdkStringHeight}
\description{
Determines the total height of a given nul-terminated
string. This value is not generally useful, because you
cannot determine how this total height will be drawn in
relation to the baseline. See \code{\link{gdkStringExtents}}.
\strong{WARNING: \code{gdk_string_height} is deprecated and should not be used in newly-written code.  
Determines the total height of a given nul-terminated
string. This value is not generally useful, because you
cannot determine how this total height will be drawn in
relation to the baseline. See \code{\link{gdkStringExtents}}.  }
}
\usage{gdkStringHeight(object, string)}
\arguments{
\item{\code{object}}{[\code{\link{GdkFont}}]  a \code{\link{GdkFont}}}
\item{\code{string}}{[character]  the string to measure.}
}
\value{[integer]  the height of the string in pixels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
