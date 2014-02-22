\alias{pangoCoverageFromBytes}
\name{pangoCoverageFromBytes}
\title{pangoCoverageFromBytes}
\description{Convert data generated from \code{pangoConverageToBytes()} back
to a \code{\link{PangoCoverage}}}
\usage{pangoCoverageFromBytes(bytes)}
\arguments{\item{\verb{bytes}}{[raw]  binary data representing a \code{\link{PangoCoverage}}}}
\value{[\code{\link{PangoCoverage}}]  a newly allocated \code{\link{PangoCoverage}}, or \code{NULL} if
              the data was invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
