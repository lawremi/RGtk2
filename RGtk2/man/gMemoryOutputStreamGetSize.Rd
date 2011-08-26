\alias{gMemoryOutputStreamGetSize}
\name{gMemoryOutputStreamGetSize}
\title{gMemoryOutputStreamGetSize}
\description{Gets the size of the currently allocated data area (availible from
\code{\link{gMemoryOutputStreamGetData}}). If the stream isn't
growable (no realloc was passed to \code{\link{gMemoryOutputStreamNew}}) then
this is the maximum size of the stream and further writes
will return \code{G_IO_ERROR_NO_SPACE}.}
\usage{gMemoryOutputStreamGetSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GMemoryOutputStream}}}}
\details{Note that for growable streams the returned size may become invalid on
the next write or truncate operation on the stream.
  
If you want the number of bytes currently written to the stream, use
\code{\link{gMemoryOutputStreamGetDataSize}}.}
\value{[numeric] the number of bytes allocated for the data buffer}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
