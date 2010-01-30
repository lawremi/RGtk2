\alias{gtkImageGetAnimation}
\name{gtkImageGetAnimation}
\title{gtkImageGetAnimation}
\description{Gets the \verb{\link{GdkPixbufAnimation}} being displayed by the \verb{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ANIMATION} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned animation.}
\usage{gtkImageGetAnimation(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}]  a \verb{\link{GtkImage}}}}
\value{[\verb{\link{GdkPixbufAnimation}}]  the displayed animation, or \code{NULL} if the image is empty}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
