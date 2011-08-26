\alias{gDataInputStreamReadLineFinish}
\name{gDataInputStreamReadLineFinish}
\title{gDataInputStreamReadLineFinish}
\description{Finish an asynchronous call started by
\code{\link{gDataInputStreamReadLineAsync}}.}
\usage{gDataInputStreamReadLineFinish(object, result, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a given \code{\link{GDataInputStream}}.}
\item{\verb{result}}{the \code{\link{GAsyncResult}} that was provided to the callback.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.20}
\value{
A list containing the following elements:
\item{retval}{[char] a string with the line that was read in (without the newlines).
Set \code{length} to a \verb{numeric} to get the length of the read line.
On an error, it will return \code{NULL} and \code{error} will be set. If there's no
content to read, it will still return \code{NULL}, but \code{error} won't be set.}
\item{\verb{length}}{a \verb{numeric} to get the length of the data read in.}
\item{\verb{error}}{\code{\link{GError}} for error reporting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
