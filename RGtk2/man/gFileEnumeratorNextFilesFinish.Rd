\alias{gFileEnumeratorNextFilesFinish}
\name{gFileEnumeratorNextFilesFinish}
\title{gFileEnumeratorNextFilesFinish}
\description{Finishes the asynchronous operation started with \code{\link{gFileEnumeratorNextFilesAsync}}.}
\usage{gFileEnumeratorNextFilesFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileEnumerator}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[list] a \verb{list} of \code{\link{GFileInfo}}s.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
