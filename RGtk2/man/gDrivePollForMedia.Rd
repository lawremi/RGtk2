\alias{gDrivePollForMedia}
\name{gDrivePollForMedia}
\title{gDrivePollForMedia}
\description{Asynchronously polls \code{drive} to see if media has been inserted or removed.}
\usage{gDrivePollForMedia(object, cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GDrive}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}, or \code{NULL}.}
\item{\verb{user.data}}{user data to pass to \code{callback}}
}
\details{When the operation is finished, \code{callback} will be called.
You can then call \code{\link{gDrivePollForMediaFinish}} to obtain the
result of the operation.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
