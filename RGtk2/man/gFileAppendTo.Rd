\alias{gFileAppendTo}
\name{gFileAppendTo}
\title{gFileAppendTo}
\description{Gets an output stream for appending data to the file. If
the file doesn't already exist it is created.}
\usage{gFileAppendTo(object, flags = "G_FILE_CREATE_NONE", cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{By default files created are generally readable by everyone,
but if you pass \verb{G_FILE_CREATE_PRIVATE} in \code{flags} the file
will be made readable only to the current user, to the level that
is supported on the target filesystem.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
Some file systems don't allow all file names, and may
return an \code{G_IO_ERROR_INVALID_FILENAME} error.
If the file is a directory the \code{G_IO_ERROR_IS_DIRECTORY} error will be
returned. Other errors are possible too, and depend on what kind of
filesystem the file is on.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileOutputStream}}] a \code{\link{GFileOutputStream}}, or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
