\alias{gFileQueryInfoFinish}
\name{gFileQueryInfoFinish}
\title{gFileQueryInfoFinish}
\description{Finishes an asynchronous file info query. 
See \code{\link{gFileQueryInfoAsync}}.}
\usage{gFileQueryInfoFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] \code{\link{GFileInfo}} for given \code{file} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
