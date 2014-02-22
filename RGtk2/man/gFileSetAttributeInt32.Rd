\alias{gFileSetAttributeInt32}
\name{gFileSetAttributeInt32}
\title{gFileSetAttributeInt32}
\description{Sets \code{attribute} of type \code{G_FILE_ATTRIBUTE_TYPE_INT32} to \code{value}. 
If \code{attribute} is of a different type, this operation will fail.}
\usage{gFileSetAttributeInt32(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{attribute}}{a string containing the attribute's name.}
\item{\verb{value}}{a \verb{integer} containing the attribute's new value.}
\item{\verb{flags}}{a \code{\link{GFileQueryInfoFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the \code{attribute} was successfully set to \code{value}
in the \code{file}, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
