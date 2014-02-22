\alias{gdkPixbufAnimationNewFromFile}
\name{gdkPixbufAnimationNewFromFile}
\title{gdkPixbufAnimationNewFromFile}
\description{Creates a new animation by loading it from a file.  The file format is
detected automatically.  If the file's format does not support multi-frame
images, then an animation with a single frame will be created. Possible errors
are in the \verb{GDK_PIXBUF_ERROR} and \verb{G_FILE_ERROR} domains.}
\usage{gdkPixbufAnimationNewFromFile(filename, .errwarn = TRUE)}
\arguments{
\item{\verb{filename}}{Name of file to load, in the GLib file name encoding}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbufAnimation}}] A newly-created animation with a reference count of 1, or \code{NULL}
if any of several error conditions ocurred:  the file could not be opened,
there was no loader for the file's format, there was not enough memory to
allocate the image buffer, or the image file contained invalid data.}
\item{\verb{error}}{return location for error}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
