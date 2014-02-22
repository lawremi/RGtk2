\alias{gFileQueryInfo}
\name{gFileQueryInfo}
\title{gFileQueryInfo}
\description{Gets the requested information about specified \code{file}. The result
is a \code{\link{GFileInfo}} object that contains key-value attributes (such as 
the type or size of the file).}
\usage{gFileQueryInfo(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{attributes}}{an attribute query string.}
\item{\verb{flags}}{a set of \code{\link{GFileQueryInfoFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The \code{attribute} value is a string that specifies the file attributes that
should be gathered. It is not an error if it's not possible to read a particular
requested attribute from a file - it just won't be set. \code{attribute} should
be a comma-separated list of attribute or attribute wildcards. The wildcard "*"
means all attributes, and a wildcard like "standard::*" means all attributes in the standard
namespace. An example attribute query be "standard::*,owner::user".
The standard attributes are available as defines, like \verb{G_FILE_ATTRIBUTE_STANDARD_NAME}.
  
If \code{cancellable} is not \code{NULL}, then the operation can be cancelled by
triggering the cancellable object from another thread. If the operation
was cancelled, the error \code{G_IO_ERROR_CANCELLED} will be returned. 
  
For symlinks, normally the information about the target of the
symlink is returned, rather than information about the symlink itself.
However if you pass \verb{G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS} in \code{flags} the
information about the symlink itself will be returned. Also, for symlinks
that point to non-existing files the information about the symlink itself
will be returned.
  
If the file does not exist, the G_IO_ERROR_NOT_FOUND error will be returned.
Other errors are possible too, and depend on what kind of filesystem the file is on.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileInfo}}] a \code{\link{GFileInfo}} for the given \code{file}, or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
