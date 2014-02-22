\alias{gFileReplaceReadwrite}
\name{gFileReplaceReadwrite}
\title{gFileReplaceReadwrite}
\description{Returns an output stream for overwriting the file in readwrite mode,
possibly creating a backup copy of the file first. If the file doesn't
exist, it will be created.}
\usage{gFileReplaceReadwrite(object, etag, make.backup, flags, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GFile}}}
\item{\verb{etag}}{an optional entity tag for the
current \code{\link{GFile}}, or \verb{NULL} to ignore}
\item{\verb{make.backup}}{\code{TRUE} if a backup should be created}
\item{\verb{flags}}{a set of \code{\link{GFileCreateFlags}}}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{For details about the behaviour, see \code{\link{gFileReplace}} which does the same
thing but returns an output stream only.
  
Note that in many non-local file cases read and write streams are not
supported, so make sure you really need to do read and write streaming,
rather than just opening for reading or writing.
  Since 2.22}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileIOStream}}] a \code{\link{GFileIOStream}} or \code{NULL} on error.}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
