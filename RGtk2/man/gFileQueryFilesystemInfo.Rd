\alias{gFileQueryFilesystemInfo}
\name{gFileQueryFilesystemInfo}
\title{gFileQueryFilesystemInfo}
\description{Similar to \code{\link{gFileQueryInfo}}, but obtains information
about the filesystem the \code{file} is on, rather than the file itself.
For instance the amount of space available and the type of
the filesystem.}
\usage{gFileQueryFilesystemInfo(object, attributes, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{attributes}}{an attribute query string.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The \code{attribute} value is a string that specifies the file attributes that
should be gathered. It is not an error if it's not possible to read a particular
requested attribute from a file - it just won't be set. \code{attribute} should
be a comma-separated list of attribute or attribute wildcards. The wildcard "*"
means all attributes, and a wildcard like "fs:*" means all attributes in the fs
namespace. The standard namespace for filesystem attributes is "fs".
Common attributes of interest are \verb{G_FILE_ATTRIBUTE_FILESYSTEM_SIZE}
(the total size of the filesystem in bytes), \verb{G_FILE_ATTRIBUTE_FILESYSTEM_FREE} (number of
bytes available), and \verb{G_FILE_ATTRIBUTE_FILESYSTEM_TYPE} (type of the filesystem).
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
If the file does not exist, the G_IO_ERROR_NOT_FOUND error will be returned.
Other errors are possible too, and depend on what kind of filesystem the file is on.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] a \code{\link{GFileInfo}} or \code{NULL} if there was an error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
