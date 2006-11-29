\alias{pangoColorCopy}
\name{pangoColorCopy}
\title{pangoColorCopy}
\description{Creates a copy of \code{src}. Primarily used by language bindings,
not that useful otherwise (since colors can just be copied
by assignment in C).}
\usage{pangoColorCopy(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoColor}}]  color to copy}}
\value{[\code{\link{PangoColor}}]  the newly allocated \code{\link{PangoColor}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
