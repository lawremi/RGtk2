\alias{gdkPixbufLoaderNewWithType}
\name{gdkPixbufLoaderNewWithType}
\title{gdkPixbufLoaderNewWithType}
\description{Creates a new pixbuf loader object that always attempts to parse
image data as if it were an image of type \code{image.type}, instead of
identifying the type automatically. Useful if you want an error if
the image isn't the expected type, for loading image formats
that can't be reliably identified by looking at the data, or if
the user manually forces a specific type.}
\usage{gdkPixbufLoaderNewWithType(image.type, .errwarn = TRUE)}
\arguments{
\item{\verb{image.type}}{[char]  name of the image format to be loaded with the image}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{The list of supported image formats depends on what image loaders
are installed, but typically "png", "jpeg", "gif", "tiff" and 
"xpm" are among the supported formats. To obtain the full list of
supported image formats, call \code{\link{gdkPixbufFormatGetName}} on each 
of the \verb{\link{GdkPixbufFormat}} structs returned by \code{\link{gdkPixbufGetFormats}}.  }
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GdkPixbufLoader}}]  A newly-created pixbuf loader.}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an allocated \verb{\link{GError}}, or \code{NULL} to ignore errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
