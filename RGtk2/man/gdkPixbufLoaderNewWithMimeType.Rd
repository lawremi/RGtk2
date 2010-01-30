\alias{gdkPixbufLoaderNewWithMimeType}
\name{gdkPixbufLoaderNewWithMimeType}
\title{gdkPixbufLoaderNewWithMimeType}
\description{Creates a new pixbuf loader object that always attempts to parse
image data as if it were an image of mime type \code{mime.type}, instead of
identifying the type automatically. Useful if you want an error if
the image isn't the expected mime type, for loading image formats
that can't be reliably identified by looking at the data, or if
the user manually forces a specific mime type.}
\usage{gdkPixbufLoaderNewWithMimeType(mime.type, .errwarn = TRUE)}
\arguments{
\item{\verb{mime.type}}{[char]  the mime type to be loaded }
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The list of supported mime types depends on what image loaders
are installed, but typically "image/png", "image/jpeg", "image/gif", 
"image/tiff" and "image/x-xpixmap" are among the supported mime types. 
To obtain the full list of supported mime types, call 
\code{\link{gdkPixbufFormatGetMimeTypes}} on each of the \verb{\link{GdkPixbufFormat}} 
structs returned by \code{\link{gdkPixbufGetFormats}}.  

  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkPixbufLoader}}]  A newly-created pixbuf loader.}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an allocated \verb{\link{GError}}, or \code{NULL} to ignore errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
