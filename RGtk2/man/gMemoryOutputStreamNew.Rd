\alias{gMemoryOutputStreamNew}
\name{gMemoryOutputStreamNew}
\title{gMemoryOutputStreamNew}
\description{Creates a new \code{\link{GMemoryOutputStream}}. }
\usage{gMemoryOutputStreamNew(len)}
\arguments{\item{\verb{len}}{the size of \code{data}}}
\details{If \code{data} is non-\code{NULL}, the stream  will use that for its internal storage.
If \code{realloc.fn} is non-\code{NULL}, it will be used for resizing the internal
storage when necessary. To construct a fixed-size output stream, 
pass \code{NULL} as \code{realloc.fn}.
\preformatted{
## a stream that can grow
stream <- gMemoryOutputStream(0)

## fixed-size streams are not supported
}}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GOutputStream}}] A newly created \code{\link{GMemoryOutputStream}} object.}
\item{\verb{data}}{pointer to a chunk of memory to use, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
