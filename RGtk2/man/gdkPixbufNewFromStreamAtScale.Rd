\alias{gdkPixbufNewFromStreamAtScale}
\name{gdkPixbufNewFromStreamAtScale}
\title{gdkPixbufNewFromStreamAtScale}
\description{Creates a new pixbuf by loading an image from an input stream.  }
\usage{gdkPixbufNewFromStreamAtScale(stream, width = -1, height = -1, 
    preserve.aspect.ratio = 1, cancellable = NULL, .errwarn = TRUE)}
\arguments{
\item{\verb{stream}}{a \code{\link{GInputStream}} to load the pixbuf from}
\item{\verb{width}}{The width the image should have or -1 to not constrain the width}
\item{\verb{height}}{The height the image should have or -1 to not constrain the height}
\item{\verb{preserve.aspect.ratio}}{\code{TRUE} to preserve the image's aspect ratio}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The file format is detected automatically. If \code{NULL} is returned, then 
\code{error} will be set. The \code{cancellable} can be used to abort the operation
from another thread. If the operation was cancelled, the error 
\code{GIO_ERROR_CANCELLED} will be returned. Other possible errors are in 
the \verb{GDK_PIXBUF_ERROR} and \code{G_IO_ERROR} domains. 
  
The image will be scaled to fit in the requested size, optionally 
preserving the image's aspect ratio. When preserving the aspect ratio, 
a \code{width} of -1 will cause the image to be scaled to the exact given 
height, and a \code{height} of -1 will cause the image to be scaled to the 
exact given width. When not preserving aspect ratio, a \code{width} or 
\code{height} of -1 means to not scale the image at all in that dimension.
  
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
