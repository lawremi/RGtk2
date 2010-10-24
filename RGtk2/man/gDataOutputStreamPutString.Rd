\alias{gDataOutputStreamPutString}
\name{gDataOutputStreamPutString}
\title{gDataOutputStreamPutString}
\description{Puts a string into the output stream.}
\usage{gDataOutputStreamPutString(object, str, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GDataOutputStream}}.}
\item{\verb{str}}{a string.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{string} was successfully added to the \code{stream}.}
\item{\verb{error}}{a \code{\link{GError}}, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
