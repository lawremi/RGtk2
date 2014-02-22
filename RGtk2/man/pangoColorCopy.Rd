\alias{pangoColorCopy}
\name{pangoColorCopy}
\title{pangoColorCopy}
\description{Creates a copy of \code{src}, Primarily used by language bindings,
not that useful otherwise (since colors can just be copied
by assignment in C).}
\usage{pangoColorCopy(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoColor}}]  color to copy, may be \code{NULL}}}
\value{[\code{\link{PangoColor}}]  the newly allocated \code{\link{PangoColor}}, or \code{NULL}
              if \code{src} was \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
