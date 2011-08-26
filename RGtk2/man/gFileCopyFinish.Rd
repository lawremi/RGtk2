\alias{gFileCopyFinish}
\name{gFileCopyFinish}
\title{gFileCopyFinish}
\description{Finishes copying the file started with 
\code{\link{gFileCopyAsync}}.}
\usage{gFileCopyFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] a \code{TRUE} on success, \code{FALSE} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
