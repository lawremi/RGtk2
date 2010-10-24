\alias{gDriveHasMedia}
\name{gDriveHasMedia}
\title{gDriveHasMedia}
\description{Checks if the \code{drive} has media. Note that the OS may not be polling
the drive for media changes; see \code{\link{gDriveIsMediaCheckAutomatic}}
for more details.}
\usage{gDriveHasMedia(object)}
\arguments{\item{\verb{object}}{a \code{\link{GDrive}}.}}
\value{[logical] \code{TRUE} if \code{drive} has media, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
