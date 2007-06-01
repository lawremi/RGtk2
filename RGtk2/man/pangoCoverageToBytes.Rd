\alias{pangoCoverageToBytes}
\name{pangoCoverageToBytes}
\title{pangoCoverageToBytes}
\description{Convert a \code{\link{PangoCoverage}} structure into a flat binary format}
\usage{pangoCoverageToBytes(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoCoverage}}]  a \code{\link{PangoCoverage}}}}
\value{
A list containing the following elements:
\item{\code{bytes}}{[raw]  location to store result (must be freed with \code{gFree()})}
\item{\code{n.bytes}}{[integer]  location to store size of result}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
