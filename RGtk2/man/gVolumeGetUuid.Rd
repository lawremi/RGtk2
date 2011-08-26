\alias{gVolumeGetUuid}
\name{gVolumeGetUuid}
\title{gVolumeGetUuid}
\description{Gets the UUID for the \code{volume}. The reference is typically based on
the file system UUID for the volume in question and should be
considered an opaque string. Returns \code{NULL} if there is no UUID
available.}
\usage{gVolumeGetUuid(object)}
\arguments{\item{\verb{object}}{a \code{\link{GVolume}}.}}
\value{[char] the UUID for \code{volume} or \code{NULL} if no UUID can be computed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
