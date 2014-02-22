\alias{gdkPixbufNewFromFileAtSize}
\name{gdkPixbufNewFromFileAtSize}
\title{gdkPixbufNewFromFileAtSize}
\description{Creates a new pixbuf by loading an image from a file.  
The file format is detected automatically. If \code{NULL} is returned, then 
\code{error} will be set. Possible errors are in the \verb{GDK_PIXBUF_ERROR} and 
\verb{G_FILE_ERROR} domains.}
\usage{gdkPixbufNewFromFileAtSize(filename, width, height, .errwarn = TRUE)}
\arguments{
\item{\verb{filename}}{Name of file to load, in the GLib file name encoding}
\item{\verb{width}}{The width the image should have or -1 to not constrain the width}
\item{\verb{height}}{The height the image should have or -1 to not constrain the height}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The image will be scaled to fit in the requested size, preserving
the image's aspect ratio. Note that the returned pixbuf may be smaller
than \code{width} x \code{height}, if the aspect ratio requires it. To load
and image at the requested size, regardless of aspect ratio, use
\code{\link{gdkPixbufNewFromFileAtScale}}.
  Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}] A newly-created pixbuf with a reference count of 1, or
\code{NULL} if any of several error conditions occurred:  the file could not
be opened, there was no loader for the file's format, there was not
enough memory to allocate the image buffer, or the image file contained
invalid data.}
\item{\verb{error}}{Return location for an error}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
