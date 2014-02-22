\alias{gOutputStreamSplice}
\name{gOutputStreamSplice}
\title{gOutputStreamSplice}
\description{Splices an input stream into an output stream.}
\usage{gOutputStreamSplice(object, source, flags = "G_OUTPUT_STREAM_SPLICE_NONE", 
    cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GOutputStream}}.}
\item{\verb{source}}{a \code{\link{GInputStream}}.}
\item{\verb{flags}}{a set of \code{\link{GOutputStreamSpliceFlags}}.}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[integer] a \verb{integer} containing the size of the data spliced, or
-1 if an error occurred.}
\item{\verb{error}}{a \code{\link{GError}} location to store the error occuring, or \code{NULL} to
ignore.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
