\alias{gdkPixbufNewFromStream}
\name{gdkPixbufNewFromStream}
\title{gdkPixbufNewFromStream}
\description{Creates a new pixbuf by loading an image from an input stream.  }
\usage{gdkPixbufNewFromStream(stream, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{stream}}{a \code{\link{GInputStream}} to load the pixbuf from}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The file format is detected automatically. If \code{NULL} is returned, then 
\code{error} will be set. The \code{cancellable} can be used to abort the operation
from another thread. If the operation was cancelled, the error 
\code{GIO_ERROR_CANCELLED} will be returned. Other possible errors are in 
the \verb{GDK_PIXBUF_ERROR} and \code{G_IO_ERROR} domains. 
  
The stream is not closed.
  Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}] A newly-created pixbuf, or \code{NULL} if any of several error
conditions occurred: the file could not be opened, the image format is
not supported, there was not enough memory to allocate the image buffer,
the stream contained invalid data, or the operation was cancelled.}
\item{\verb{error}}{Return location for an error}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
