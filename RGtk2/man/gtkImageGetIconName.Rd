\alias{gtkImageGetIconName}
\name{gtkImageGetIconName}
\title{gtkImageGetIconName}
\description{Gets the icon name and size being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ICON_NAME} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetIconName(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\details{Since 2.6}
\value{
A list containing the following elements:
\item{\verb{icon.name}}{place to store an
icon name, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
\item{\verb{size}}{place to store an icon size,
or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ][  \acronym{type}   int]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
