\alias{gFileSetAttribute}
\name{gFileSetAttribute}
\title{gFileSetAttribute}
\description{Sets an attribute in the file with attribute name \code{attribute} to \code{value}.}
\usage{gFileSetAttribute(object, attribute, type, value.p, flags = "G_FILE_QUERY_INFO_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{attribute}}{a string containing the attribute's name.}
\item{\verb{type}}{The type of the attribute}
\item{\verb{value.p}}{a pointer to the value (or the pointer itself if the type is a pointer type)}
\item{\verb{flags}}{a set of \code{\link{GFileQueryInfoFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the attribute was set, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
