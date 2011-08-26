\alias{gVolumeMonitorGetVolumeForUuid}
\name{gVolumeMonitorGetVolumeForUuid}
\title{gVolumeMonitorGetVolumeForUuid}
\description{Finds a \code{\link{GVolume}} object by its UUID (see \code{\link{gVolumeGetUuid}})}
\usage{gVolumeMonitorGetVolumeForUuid(object, uuid)}
\arguments{
\item{\verb{object}}{a \code{\link{GVolumeMonitor}}.}
\item{\verb{uuid}}{the UUID to look for}
}
\value{[\code{\link{GVolume}}] a \code{\link{GVolume}} or \code{NULL} if no such volume is available.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
