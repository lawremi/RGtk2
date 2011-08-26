\alias{gFileNewForUri}
\name{gFileNewForUri}
\title{gFileNewForUri}
\description{Constructs a \code{\link{GFile}} for a given URI. This operation never 
fails, but the returned object might not support any I/O 
operation if \code{uri} is malformed or if the uri type is 
not supported.}
\usage{gFileNewForUri(uri)}
\arguments{\item{\verb{uri}}{a string containing a URI.}}
\value{[\code{\link{GFile}}] a \code{\link{GFile}} for the given \code{uri}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
