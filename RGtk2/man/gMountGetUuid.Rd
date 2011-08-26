\alias{gMountGetUuid}
\name{gMountGetUuid}
\title{gMountGetUuid}
\description{Gets the UUID for the \code{mount}. The reference is typically based on
the file system UUID for the mount in question and should be
considered an opaque string. Returns \code{NULL} if there is no UUID
available.}
\usage{gMountGetUuid(object)}
\arguments{\item{\verb{object}}{a \code{\link{GMount}}.}}
\value{[char] the UUID for \code{mount} or \code{NULL} if no UUID can be computed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
