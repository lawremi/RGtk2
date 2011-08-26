\alias{gFileAppendToFinish}
\name{gFileAppendToFinish}
\title{gFileAppendToFinish}
\description{Finishes an asynchronous file append operation started with 
\code{\link{gFileAppendToAsync}}.}
\usage{gFileAppendToFinish(object, res, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{input \code{\link{GFile}}.}
\item{\verb{res}}{\code{\link{GAsyncResult}}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GFileOutputStream}}] a valid \code{\link{GFileOutputStream}} or \code{NULL} on error.}
\item{\verb{error}}{a \code{\link{GError}}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
