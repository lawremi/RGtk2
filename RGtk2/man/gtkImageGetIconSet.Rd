\alias{gtkImageGetIconSet}
\name{gtkImageGetIconSet}
\title{gtkImageGetIconSet}
\description{Gets the icon set and size being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_ICON_SET} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetIconSet(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{icon.set}}{location to store a
\code{\link{GtkIconSet}}, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
\item{\verb{size}}{location to store a stock
icon size, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ][  \acronym{type}   int]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
