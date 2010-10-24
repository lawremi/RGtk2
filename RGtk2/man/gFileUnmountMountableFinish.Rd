\alias{gFileUnmountMountableFinish}
\name{gFileUnmountMountableFinish}
\title{gFileUnmountMountableFinish}
\description{
Finishes an unmount operation, see \code{\link{gFileUnmountMountable}} for details.
\strong{WARNING: \code{g_file_unmount_mountable_finish} has been deprecated since version 2.22 and should not be used in newly-written code. Use \code{\link{gFileUnmountMountableWithOperationFinish}} instead.}
}
\usage{gFileUnmountMountableFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{result}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Finish an asynchronous unmount operation that was started 
with \code{\link{gFileUnmountMountable}}.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation finished successfully. \code{FALSE}
otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
