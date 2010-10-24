\alias{gSocketServiceIsActive}
\name{gSocketServiceIsActive}
\title{gSocketServiceIsActive}
\description{Check whether the service is active or not. An active
service will accept new clients that connect, while
a non-active service will let connecting clients queue
up until the service is started.}
\usage{gSocketServiceIsActive(object)}
\arguments{\item{\verb{object}}{a \code{\link{GSocketService}}}}
\details{Since 2.22}
\value{[logical] \code{TRUE} if the service is active, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
