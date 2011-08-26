\alias{gFileReplaceContentsFinish}
\name{gFileReplaceContentsFinish}
\title{gFileReplaceContentsFinish}
\description{Finishes an asynchronous replace of the given \code{file}. See
\code{\link{gFileReplaceContentsAsync}}. Sets \code{new.etag} to the new entity 
tag for the document, if present.}
\usage{gFileReplaceContentsFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{a \code{\link{GAsyncResult}}.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success, \code{FALSE} on failure.}
\item{\verb{new.etag}}{a location of a new entity tag
for the document. This should be freed with \code{gFree()} when it is no
longer needed, or \code{NULL}}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
