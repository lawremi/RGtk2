\alias{gBufferedInputStreamPeekBuffer}
\name{gBufferedInputStreamPeekBuffer}
\title{gBufferedInputStreamPeekBuffer}
\description{Returns the buffer with the currently available bytes. The returned
buffer must not be modified and will become invalid when reading from
the stream or filling the buffer.}
\usage{gBufferedInputStreamPeekBuffer(object)}
\arguments{\item{\verb{object}}{a \code{\link{GBufferedInputStream}}.}}
\value{
A list containing the following elements:
\item{retval}{[R object] read-only buffer}
\item{\verb{count}}{a \verb{numeric} to get the number of bytes available in the buffer.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
