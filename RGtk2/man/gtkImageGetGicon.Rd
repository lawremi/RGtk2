\alias{gtkImageGetGicon}
\name{gtkImageGetGicon}
\title{gtkImageGetGicon}
\description{Gets the \code{\link{GIcon}} and size being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_GICON} (see \code{\link{gtkImageGetStorageType}}).
The caller of this function does not own a reference to the
returned \code{\link{GIcon}}.}
\usage{gtkImageGetGicon(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\details{Since 2.14}
\value{
A list containing the following elements:
\item{\verb{gicon}}{place to store a
\code{\link{GIcon}}, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
\item{\verb{size}}{place to store an icon size,
or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ][  \acronym{type}   int]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
