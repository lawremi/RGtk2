\alias{gdkPixbufSaveToBuffer}
\name{gdkPixbufSaveToBuffer}
\title{gdkPixbufSaveToBuffer}
\description{Saves pixbuf to a new buffer in format \code{type}, which is currently "jpeg",
"png", "tiff", "ico" or "bmp".  This is a convenience function that uses
\code{\link{gdkPixbufSaveToCallback}} to do the real work. Note that the buffer 
is not and may contain embedded  nuls.
If \code{error} is set, \code{FALSE} will be returned and \code{buffer} will be set to
\code{NULL}. Possible errors include those in the \verb{GDK_PIXBUF_ERROR}
domain.}
\usage{gdkPixbufSaveToBuffer(object, type, ..., .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}.}
\item{\verb{type}}{name of file format.}
\item{\verb{...}}{whether an error was set}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{See \code{\link{gdkPixbufSave}} for more details.
  Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] whether an error was set}
\item{\verb{buffer}}{location to receive a pointer to the new buffer.}
\item{\verb{buffer.size}}{location to receive the size of the new buffer.}
\item{\verb{error}}{return location for error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
