\alias{pangoCoverageToBytes}
\name{pangoCoverageToBytes}
\title{pangoCoverageToBytes}
\description{Convert a \code{\link{PangoCoverage}} structure into a flat binary format}
\usage{pangoCoverageToBytes(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoCoverage}}]  a \code{\link{PangoCoverage}}}}
\value{
A list containing the following elements:
\item{\verb{bytes}}{[raw]  location to store result (must be freed with \code{gFree()})}
\item{\verb{n.bytes}}{[integer]  location to store size of result}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
