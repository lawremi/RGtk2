\alias{gFileInputStreamQueryInfoFinish}
\name{gFileInputStreamQueryInfoFinish}
\title{gFileInputStreamQueryInfoFinish}
\description{Finishes an asynchronous info query operation.}
\usage{gFileInputStreamQueryInfoFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileInputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] \code{\link{GFileInfo}}.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring,
or \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
