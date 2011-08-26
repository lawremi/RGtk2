\alias{gAsyncInitableNewFinish}
\name{gAsyncInitableNewFinish}
\title{gAsyncInitableNewFinish}
\description{Finishes the async construction for the various g_async_initable_new calls,
returning the created object or \code{NULL} on error.}
\usage{gAsyncInitableNewFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{the \code{\link{GAsyncInitable}} from the callback}
\item{\verb{res}}{the \verb{GAsyncResult.from} the callback}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GObject}}] a newly created \code{\link{GObject}}, or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
