\alias{gMountGuessContentTypeFinish}
\name{gMountGuessContentTypeFinish}
\title{gMountGuessContentTypeFinish}
\description{Finishes guessing content types of \code{mount}. If any errors occured
during the operation, \code{error} will be set to contain the errors and
\code{FALSE} will be returned. In particular, you may get an 
\code{G_IO_ERROR_NOT_SUPPORTED} if the mount does not support content 
guessing.}
\usage{gMountGuessContentTypeFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GMount}}}
\item{\verb{result}}{a \code{\link{GAsyncResult}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.18}
\value{
A list containing the following elements:
\item{retval}{[character] a list of content types or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
