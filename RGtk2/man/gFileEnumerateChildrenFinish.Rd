\alias{gFileEnumerateChildrenFinish}
\name{gFileEnumerateChildrenFinish}
\title{gFileEnumerateChildrenFinish}
\description{Finishes an async enumerate children operation.
See \code{\link{gFileEnumerateChildrenAsync}}.}
\usage{gFileEnumerateChildrenFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileEnumerator}}] a \code{\link{GFileEnumerator}} or \code{NULL} if an error occurred.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
