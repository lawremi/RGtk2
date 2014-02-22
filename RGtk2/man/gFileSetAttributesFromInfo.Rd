\alias{gFileSetAttributesFromInfo}
\name{gFileSetAttributesFromInfo}
\title{gFileSetAttributesFromInfo}
\description{Tries to set all attributes in the \code{\link{GFileInfo}} on the target values, 
not stopping on the first error.}
\usage{gFileSetAttributesFromInfo(object, info, flags = "G_FILE_QUERY_INFO_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{info}}{a \code{\link{GFileInfo}}.}
\item{\verb{flags}}{\code{\link{GFileQueryInfoFlags}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If there is any error during this operation then \code{error} will be set to
the first error. Error on particular fields are flagged by setting 
the "status" field in the attribute value to 
\code{G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING}, which means you can also detect
further errors.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if there was any error, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
