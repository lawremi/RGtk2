\alias{pangoCoverageCopy}
\name{pangoCoverageCopy}
\title{pangoCoverageCopy}
\description{Copy an existing \code{\link{PangoCoverage}}. (This function may now be unecessary 
since we refcount the structure. Mail otaylor\code{redhat.com} if you
use it.)}
\usage{pangoCoverageCopy(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoCoverage}}]  a \code{\link{PangoCoverage}}}}
\value{[\code{\link{PangoCoverage}}]  the newly allocated \code{\link{PangoCoverage}},
              with a reference count of one.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
