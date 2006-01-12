\alias{gdkPixbufLoaderWrite}
\name{gdkPixbufLoaderWrite}
\title{gdkPixbufLoaderWrite}
\description{This will cause a pixbuf loader to parse the next \code{count} bytes of
an image.  It will return \code{TRUE} if the data was loaded successfully,
and \code{FALSE} if an error occurred.  In the latter case, the loader
will be closed, and will not accept further writes. If \code{FALSE} is
returned, \code{error} will be set to an error from the \code{GDK_PIXBUF_ERROR}
or \code{G_FILE_ERROR} domains.}
\usage{gdkPixbufLoaderWrite(object, buf)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbufLoader}}]  A pixbuf loader.}
\item{\code{buf}}{[integer]  Pointer to image data.}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the write was successful, or \code{FALSE} if the loader
cannot parse the buffer.}
\item{\code{error}}{[\code{\link{GError}}]  return location for errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
