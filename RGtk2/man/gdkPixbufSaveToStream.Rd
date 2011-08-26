\alias{gdkPixbufSaveToStream}
\name{gdkPixbufSaveToStream}
\title{gdkPixbufSaveToStream}
\description{Saves \code{pixbuf} to an output stream.}
\usage{gdkPixbufSaveToStream(object, stream, type, cancellable, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{stream}}{a \code{\link{GOutputStream}} to save the pixbuf to}
\item{\verb{type}}{name of file format}
\item{\verb{cancellable}}{optional \code{\link{GCancellable}} object, \code{NULL} to ignore}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Supported file formats are currently "jpeg", "tiff", "png", "ico" or 
"bmp". See \code{\link{gdkPixbufSaveToBuffer}} for more details.
  
The \code{cancellable} can be used to abort the operation from another 
thread. If the operation was cancelled, the error \code{GIO_ERROR_CANCELLED} 
will be returned. Other possible errors are in the \verb{GDK_PIXBUF_ERROR} 
and \code{G_IO_ERROR} domains. 
  
The stream is not closed.
  Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the pixbuf was saved successfully, \code{FALSE} if an
error was set.}
\item{\verb{error}}{return location for error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
