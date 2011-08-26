\alias{gtkImageGetPixmap}
\name{gtkImageGetPixmap}
\title{gtkImageGetPixmap}
\description{Gets the pixmap and mask being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_PIXMAP} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned pixmap and mask.}
\usage{gtkImageGetPixmap(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{pixmap}}{location to store the
pixmap, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
\item{\verb{mask}}{location to store the
mask, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
