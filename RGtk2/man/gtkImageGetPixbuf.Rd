\alias{gtkImageGetPixbuf}
\name{gtkImageGetPixbuf}
\title{gtkImageGetPixbuf}
\description{Gets the \verb{\link{GdkPixbuf}} being displayed by the \verb{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_PIXBUF} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned pixbuf.}
\usage{gtkImageGetPixbuf(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}]  a \verb{\link{GtkImage}}}}
\value{[\verb{\link{GdkPixbuf}}]  the displayed pixbuf, or \code{NULL} if the image is empty}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
