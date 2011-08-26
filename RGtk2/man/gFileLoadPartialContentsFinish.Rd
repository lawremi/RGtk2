\alias{gFileLoadPartialContentsFinish}
\name{gFileLoadPartialContentsFinish}
\title{gFileLoadPartialContentsFinish}
\description{Finishes an asynchronous partial load operation that was started
with \code{gFileLoadPartialContentsAsync()}. The data is always 
zero-terminated, but this is not included in the resultant \code{length}.}
\usage{gFileLoadPartialContentsFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the load was successful. If \code{FALSE} and \code{error} is
present, it will be set appropriately.}
\item{\verb{contents}}{a location to place the contents of the file.}
\item{\verb{length}}{a location to place the length of the contents of the file,
or \code{NULL} if the length is not needed}
\item{\verb{etag.out}}{a location to place the current entity tag for the file,
or \code{NULL} if the entity tag is not needed}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
