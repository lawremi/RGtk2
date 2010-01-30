\alias{cairoSetSource}
\name{cairoSetSource}
\title{cairoSetSource}
\description{Sets the source pattern within \code{cr} to \code{source}. This pattern
will then be used for any subsequent drawing operation until a new
source pattern is set.}
\usage{cairoSetSource(cr, source)}
\arguments{
\item{\verb{cr}}{[\verb{\link{Cairo}}]  a cairo context}
\item{\verb{source}}{[\verb{\link{CairoPattern}}]  a \verb{\link{CairoPattern}} to be used as the source for
subsequent drawing operations.}
}
\details{Note: The pattern's transformation matrix will be locked to the
user space in effect at the time of \code{\link{cairoSetSource}}. This means
that further modifications of the current transformation matrix
will not affect the source pattern. See \code{\link{cairoPatternSetMatrix}}.
  
XXX: I'd also like to direct the reader's attention to some
(not-yet-written) section on cairo's imaging model. How would I do
that if such a section existed? (cworth).  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
