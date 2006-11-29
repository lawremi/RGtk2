\alias{gdkPixbufSaveToBuffer}
\name{gdkPixbufSaveToBuffer}
\title{gdkPixbufSaveToBuffer}
\description{Saves pixbuf to a new buffer in format \code{type}, which is currently "jpeg",
"png", "tiff", "ico" or "bmp".  This is a convenience function that uses
\code{\link{gdkPixbufSaveToCallback}} to do the real work. Note that the buffer 
is not and may contain embedded  nuls.
If \code{error} is set, \code{FALSE} will be returned and \code{string} will be set to
\code{NULL}. Possible errors include those in the \code{GDK_PIXBUF_ERROR}
domain.}
\usage{gdkPixbufSaveToBuffer(object, type, ..., .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}.}
\item{\code{type}}{[char]  name of file format.}
\item{\code{...}}{ list of key-value save options}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{See \code{\link{gdkPixbufSave}} for more details.  

  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether an error was set}
\item{\code{buffer}}{[character]  location to receive a pointer to the new buffer.}
\item{\code{buffer.size}}{[numeric]  location to receive the size of the new buffer.}
\item{\code{error}}{[\code{\link{GError}}]  return location for error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
