\alias{gFileOpenReadwriteFinish}
\name{gFileOpenReadwriteFinish}
\title{gFileOpenReadwriteFinish}
\description{Finishes an asynchronous file read operation started with
\code{\link{gFileOpenReadwriteAsync}}.}
\usage{gFileOpenReadwriteFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileIOStream}}] a \code{\link{GFileIOStream}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
