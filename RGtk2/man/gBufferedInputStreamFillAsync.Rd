\alias{gBufferedInputStreamFillAsync}
\name{gBufferedInputStreamFillAsync}
\title{gBufferedInputStreamFillAsync}
\description{Reads data into \code{stream}'s buffer asynchronously, up to \code{count} size.
\code{io.priority} can be used to prioritize reads. For the synchronous
version of this function, see \code{\link{gBufferedInputStreamFill}}.}
\usage{gBufferedInputStreamFillAsync(object, count, io.priority = 0, 
    cancellable = NULL, callback, user.data = NULL)}
\arguments{
\item{\verb{object}}{\code{\link{GBufferedInputStream}}.}
\item{\verb{count}}{the number of bytes that will be read from the stream.}
\item{\verb{io.priority}}{the I/O priority
of the request.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object}
\item{\verb{callback}}{a \code{\link{GAsyncReadyCallback}}.}
\item{\verb{user.data}}{a \verb{R object}.}
}
\details{If \code{count} is -1 then the attempted read size is equal to the number
of bytes that are required to fill the buffer.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
