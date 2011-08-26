\alias{gtkImageGetImage}
\name{gtkImageGetImage}
\title{gtkImageGetImage}
\description{Gets the \code{\link{GdkImage}} and mask being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_IMAGE} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned image and mask.}
\usage{gtkImageGetImage(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{gdk.image}}{return location for
a \code{\link{GtkImage}}, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
\item{\verb{mask}}{return location for a
\code{\link{GdkBitmap}}, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
