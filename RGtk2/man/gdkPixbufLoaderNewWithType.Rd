\alias{gdkPixbufLoaderNewWithType}
\name{gdkPixbufLoaderNewWithType}
\title{gdkPixbufLoaderNewWithType}
\description{Creates a new pixbuf loader object that always attempts to parse
image data as if it were an image of type \code{image.type}, instead of
identifying the type automatically. Useful if you want an error if
the image isn't the expected type, for loading image formats
that can't be reliably identified by looking at the data, or if
the user manually forces a specific type.}
\usage{gdkPixbufLoaderNewWithType(image.type)}
\arguments{\item{\code{image.type}}{[char]  name of the image format to be loaded with the image}}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GdkPixbufLoader}}]  A newly-created pixbuf loader.}
\item{\code{error}}{[\code{\link{GError}}]  return location for an allocated \code{\link{GError}}, or \code{NULL} to ignore errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
