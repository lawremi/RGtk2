\alias{gDataInputStreamReadUntilFinish}
\name{gDataInputStreamReadUntilFinish}
\title{gDataInputStreamReadUntilFinish}
\description{Finish an asynchronous call started by
\code{\link{gDataInputStreamReadUntilAsync}}.}
\usage{gDataInputStreamReadUntilFinish(object, result, length, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{result}}{the \code{\link{GAsyncResult}} that was provided to the callback.}
\item{\verb{length}}{a \verb{numeric} to get the length of the data read in.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.20}
\value{
A list containing the following elements:
\item{retval}{[char] a string with the data that was read before encountering
any of the stop characters. Set \code{length} to a \verb{numeric} to get the length
of the string. This function will return \code{NULL} on an error.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
