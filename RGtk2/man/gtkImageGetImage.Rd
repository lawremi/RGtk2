\alias{gtkImageGetImage}
\name{gtkImageGetImage}
\title{gtkImageGetImage}
\description{Gets the \verb{\link{GdkImage}} and mask being displayed by the \verb{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_IMAGE} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned image and mask.}
\usage{gtkImageGetImage(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}]  a \verb{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{gdk.image}}{[\verb{\link{GdkImage}}]  return location for a \verb{\link{GtkImage}}}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  return location for a \verb{\link{GdkBitmap}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
