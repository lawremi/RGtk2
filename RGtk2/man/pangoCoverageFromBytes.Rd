\alias{pangoCoverageFromBytes}
\name{pangoCoverageFromBytes}
\title{pangoCoverageFromBytes}
\description{Convert data generated from \code{pangoConverageToBytes()} back
to a \verb{\link{PangoCoverage}}}
\usage{pangoCoverageFromBytes(bytes)}
\arguments{\item{\verb{bytes}}{[raw]  binary data representing a \verb{\link{PangoCoverage}}}}
\value{[\verb{\link{PangoCoverage}}]  a newly allocated \verb{\link{PangoCoverage}}, or \code{NULL} if
              the data was invalid.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
