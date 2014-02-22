\alias{gdkPixbufNewFromFileAtScale}
\name{gdkPixbufNewFromFileAtScale}
\title{gdkPixbufNewFromFileAtScale}
\description{Creates a new pixbuf by loading an image from a file.  The file format is
detected automatically. If \code{NULL} is returned, then \code{error} will be set.
Possible errors are in the \verb{GDK_PIXBUF_ERROR} and \verb{G_FILE_ERROR} domains.
The image will be scaled to fit in the requested size, optionally preserving
the image's aspect ratio. }
\usage{gdkPixbufNewFromFileAtScale(filename, width, height, preserve.aspect.ratio, 
    .errwarn = TRUE)}
\arguments{
\item{\verb{filename}}{Name of file to load, in the GLib file name encoding}
\item{\verb{width}}{The width the image should have or -1 to not constrain the width}
\item{\verb{height}}{The height the image should have or -1 to not constrain the height}
\item{\verb{preserve.aspect.ratio}}{\code{TRUE} to preserve the image's aspect ratio}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{When preserving the aspect ratio, a \code{width} of -1 will cause the image
to be scaled to the exact given height, and a \code{height} of -1 will cause
the image to be scaled to the exact given width. When not preserving
aspect ratio, a \code{width} or \code{height} of -1 means to not scale the image 
at all in that dimension. Negative values for \code{width} and \code{height} are 
allowed since 2.8.
  Since 2.6}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}] A newly-created pixbuf with a reference count of 1, or \code{NULL}
if any of several error conditions occurred:  the file could not be opened,
there was no loader for the file's format, there was not enough memory to
allocate the image buffer, or the image file contained invalid data.}
\item{\verb{error}}{Return location for an error}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
