\alias{gFileEnumerateChildren}
\name{gFileEnumerateChildren}
\title{gFileEnumerateChildren}
\description{Gets the requested information about the files in a directory. The result
is a \code{\link{GFileEnumerator}} object that will give out \code{\link{GFileInfo}} objects for
all the files in the directory.}
\usage{gFileEnumerateChildren(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", 
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
  
If the file does not exist, the G_IO_ERROR_NOT_FOUND error will be returned.
If the file is not a directory, the G_FILE_ERROR_NOTDIR error will be returned.
Other errors are possible too.}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileEnumerator}}] A \code{\link{GFileEnumerator}} if successful, \code{NULL} on error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
