\alias{gDataOutputStreamPutUint16}
\name{gDataOutputStreamPutUint16}
\title{gDataOutputStreamPutUint16}
\description{Puts an unsigned 16-bit integer into the output stream.}
\usage{gDataOutputStreamPutUint16(object, data, cancellable = NULL, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GDataOutputStream}}.}
\item{\verb{data}}{a \verb{integer}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{data} was successfully added to the \code{stream}.}
\item{\verb{error}}{a \code{\link{GError}}, \code{NULL} to ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
