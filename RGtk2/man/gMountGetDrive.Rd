\alias{gMountGetDrive}
\name{gMountGetDrive}
\title{gMountGetDrive}
\description{Gets the drive for the \code{mount}.}
\usage{gMountGetDrive(object)}
\arguments{\item{\verb{object}}{a \code{\link{GMount}}.}}
\details{This is a convenience method for getting the \code{\link{GVolume}} and then
using that object to get the \code{\link{GDrive}}.}
\value{[\code{\link{GDrive}}] a \code{\link{GDrive}} or \code{NULL} if \code{mount} is not associated with a volume or a drive.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
