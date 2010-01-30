\alias{pangoCoverageCopy}
\name{pangoCoverageCopy}
\title{pangoCoverageCopy}
\description{Copy an existing \verb{\link{PangoCoverage}}. (This function may now be unnecessary
since we refcount the structure. File a bug if you use it.)}
\usage{pangoCoverageCopy(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoCoverage}}]  a \verb{\link{PangoCoverage}}}}
\value{[\verb{\link{PangoCoverage}}]  the newly allocated \verb{\link{PangoCoverage}},
              with a reference count of one.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
