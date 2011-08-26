\alias{gFileIOStreamQueryInfoFinish}
\name{gFileIOStreamQueryInfoFinish}
\title{gFileIOStreamQueryInfoFinish}
\description{Finalizes the asynchronous query started
by \code{\link{gFileIOStreamQueryInfoAsync}}.}
\usage{gFileIOStreamQueryInfoFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileIOStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] A \code{\link{GFileInfo}} for the finished query.}
\item{\verb{error}}{a \code{\link{GError}}, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
