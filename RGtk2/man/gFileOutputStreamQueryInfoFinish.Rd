\alias{gFileOutputStreamQueryInfoFinish}
\name{gFileOutputStreamQueryInfoFinish}
\title{gFileOutputStreamQueryInfoFinish}
\description{Finalizes the asynchronous query started 
by \code{\link{gFileOutputStreamQueryInfoAsync}}.}
\usage{gFileOutputStreamQueryInfoFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFileOutputStream}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] A \code{\link{GFileInfo}} for the finished query.}
\item{\verb{error}}{a \code{\link{GError}}, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
