\alias{gtkImageGetAnimation}
\name{gtkImageGetAnimation}
\title{gtkImageGetAnimation}
\description{Gets the \code{\link{GdkPixbufAnimation}} being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ANIMATION} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned animation.}
\usage{gtkImageGetAnimation(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\value{[\code{\link{GdkPixbufAnimation}}] the displayed animation, or \code{NULL} if
the image is empty. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
