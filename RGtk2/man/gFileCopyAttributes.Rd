\alias{gFileCopyAttributes}
\name{gFileCopyAttributes}
\title{gFileCopyAttributes}
\description{Copies the file attributes from \code{source} to \code{destination}. }
\usage{gFileCopyAttributes(object, destination, flags = "G_FILE_COPY_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFile}} with attributes.}
\item{\verb{destination}}{a \code{\link{GFile}} to copy attributes to.}
\item{\verb{flags}}{a set of \code{\link{GFileCopyFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Normally only a subset of the file attributes are copied,
those that are copies in a normal file copy operation
(which for instance does not include e.g. owner). However
if \verb{G_FILE_COPY_ALL_METADATA} is specified in \code{flags}, then
all the metadata that is possible to copy is copied. This
is useful when implementing move by copy + delete source.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the attributes were copied successfully, \code{FALSE} otherwise.}
\item{\verb{error}}{a \code{\link{GError}}, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
