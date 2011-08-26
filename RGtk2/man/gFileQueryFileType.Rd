\alias{gFileQueryFileType}
\name{gFileQueryFileType}
\title{gFileQueryFileType}
\description{Utility function to inspect the \code{\link{GFileType}} of a file. This is
implemented using \code{\link{gFileQueryInfo}} and as such does blocking I/O.}
\usage{gFileQueryFileType(object, flags, cancellable = NULL)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{flags}}{a set of \code{\link{GFileQueryInfoFlags}} passed to \code{\link{gFileQueryInfo}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
}
\details{The primary use case of this method is to check if a file is a regular file,
directory, or symlink.
  Since 2.18}
\value{[\code{\link{GFileType}}] The \code{\link{GFileType}} of the file and \verb{G_FILE_TYPE_UNKNOWN} if the file
does not exist}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
