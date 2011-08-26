\alias{gFileNewForPath}
\name{gFileNewForPath}
\title{gFileNewForPath}
\description{Constructs a \code{\link{GFile}} for a given path. This operation never
fails, but the returned object might not support any I/O
operation if \code{path} is malformed.}
\usage{gFileNewForPath(path)}
\arguments{\item{\verb{path}}{a string containing a relative or absolute path.}}
\value{[\code{\link{GFile}}] a new \code{\link{GFile}} for the given \code{path}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
