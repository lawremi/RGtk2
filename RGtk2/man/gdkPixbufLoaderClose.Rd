\alias{gdkPixbufLoaderClose}
\name{gdkPixbufLoaderClose}
\title{gdkPixbufLoaderClose}
\description{Informs a pixbuf loader that no further writes with
\code{\link{gdkPixbufLoaderWrite}} will occur, so that it can free its
internal loading structures. Also, tries to parse any data that
hasn't yet been parsed; if the remaining data is partial or
corrupt, an error will be returned.  If \code{FALSE} is returned, \code{error}
will be set to an error from the \verb{GDK_PIXBUF_ERROR} or \verb{G_FILE_ERROR}
domains. If you're just cancelling a load rather than expecting it
to be finished, passing \code{NULL} for \code{error} to ignore it is
reasonable.}
\usage{gdkPixbufLoaderClose(object, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{A pixbuf loader.}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if all image data written so far was successfully
passed out via the update_area signal}
\item{\verb{error}}{return location for a \code{\link{GError}}, or \code{NULL} to ignore errors. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
