\alias{gtkImageGetImage}
\name{gtkImageGetImage}
\title{gtkImageGetImage}
\description{Gets the \code{\link{GdkImage}} and mask being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_IMAGE} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned image and mask.}
\usage{gtkImageGetImage(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkImage}}]  a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\code{gdk.image}}{[\code{\link{GdkImage}}]  return location for a \code{\link{GtkImage}}}
\item{\code{mask}}{[\code{\link{GdkBitmap}}]  return location for a \code{\link{GdkBitmap}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
