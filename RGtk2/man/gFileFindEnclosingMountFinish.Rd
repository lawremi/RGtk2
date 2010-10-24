\alias{gFileFindEnclosingMountFinish}
\name{gFileFindEnclosingMountFinish}
\title{gFileFindEnclosingMountFinish}
\description{Finishes an asynchronous find mount request. 
See \code{\link{gFileFindEnclosingMountAsync}}.}
\usage{gFileFindEnclosingMountFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFile}}}
\item{\verb{res}}{a \code{\link{GAsyncResult}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GMount}}] \code{\link{GMount}} for given \code{file} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
