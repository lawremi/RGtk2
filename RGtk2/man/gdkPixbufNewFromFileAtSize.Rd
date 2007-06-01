\alias{gdkPixbufNewFromFileAtSize}
\name{gdkPixbufNewFromFileAtSize}
\title{gdkPixbufNewFromFileAtSize}
\description{Creates a new pixbuf by loading an image from a file.  The file format is
detected automatically. If \code{NULL} is returned, then \code{error} will be set.
Possible errors are in the \code{GDK_PIXBUF_ERROR} and \code{G_FILE_ERROR} domains.
The image will be scaled to fit in the requested size, preserving
the image's aspect ratio.}
\usage{gdkPixbufNewFromFileAtSize(filename, width, height, .errwarn = TRUE)}
\arguments{
\item{\code{filename}}{[char]  Name of file to load, in the GLib file name encoding}
\item{\code{width}}{[integer]  The width the image should have or -1 to not constrain the width}
\item{\code{height}}{[integer]  The height the image should have or -1 to not constrain the height}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}]  A newly-created pixbuf with a reference count of 1, or 
\code{NULL} if any of several error conditions occurred:  the file could not 
be opened, there was no loader for the file's format, there was not 
enough memory to allocate the image buffer, or the image file contained 
invalid data.}
\item{\code{height}}{[integer]  The height the image should have or -1 to not constrain the height}
\item{\code{error}}{[\code{\link{GError}}]  Return location for an error}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
