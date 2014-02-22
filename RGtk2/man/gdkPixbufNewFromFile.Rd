\alias{gdkPixbufNewFromFile}
\name{gdkPixbufNewFromFile}
\title{gdkPixbufNewFromFile}
\description{Creates a new pixbuf by loading an image from a file.  The file format is
detected automatically. If \code{NULL} is returned, then \code{error} will be set.
Possible errors are in the \verb{GDK_PIXBUF_ERROR} and \verb{G_FILE_ERROR} domains.}
\usage{gdkPixbufNewFromFile(filename, .errwarn = TRUE)}
\arguments{
\item{\verb{filename}}{Name of file to load, in the GLib file name encoding}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbuf}}] A newly-created pixbuf with a reference count of 1, or \code{NULL} if
any of several error conditions occurred:  the file could not be opened,
there was no loader for the file's format, there was not enough memory to
allocate the image buffer, or the image file contained invalid data.}
\item{\verb{error}}{Return location for an error}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
