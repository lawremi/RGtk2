\alias{gtkImageGetPixmap}
\name{gtkImageGetPixmap}
\title{gtkImageGetPixmap}
\description{Gets the pixmap and mask being displayed by the \verb{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_PIXMAP} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned pixmap and mask.}
\usage{gtkImageGetPixmap(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}]  a \verb{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}]  location to store the pixmap, or \code{NULL}}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  location to store the mask, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
