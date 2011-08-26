\alias{gVolumeMonitorGetMountForUuid}
\name{gVolumeMonitorGetMountForUuid}
\title{gVolumeMonitorGetMountForUuid}
\description{Finds a \code{\link{GMount}} object by its UUID (see \code{\link{gMountGetUuid}})}
\usage{gVolumeMonitorGetMountForUuid(object, uuid)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolumeMonitor}}.}
\item{\verb{uuid}}{the UUID to look for}
}
\value{[\code{\link{GMount}}] a \code{\link{GMount}} or \code{NULL} if no such mount is available.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
