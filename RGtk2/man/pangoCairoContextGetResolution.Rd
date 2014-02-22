\alias{pangoCairoContextGetResolution}
\name{pangoCairoContextGetResolution}
\title{pangoCairoContextGetResolution}
\description{Gets the resolution for the context. See \code{\link{pangoCairoContextSetResolution}}}
\usage{pangoCairoContextGetResolution(context)}
\arguments{\item{\verb{context}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}, from a pangocairo font map}}
\details{  Since 1.10}
\value{[numeric]  the resolution in "dots per inch". A negative value will
 be returned if no resolution has previously been set.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
