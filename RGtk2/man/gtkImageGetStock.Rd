\alias{gtkImageGetStock}
\name{gtkImageGetStock}
\title{gtkImageGetStock}
\description{Gets the stock icon name and size being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_STOCK} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetStock(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{stock.id}}{place to store a
stock icon name, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{transfer none}  ][  \acronym{allow-none}  ]}}
\item{\verb{size}}{place to store a stock icon
size, or \code{NULL}. \emph{[  \acronym{out}  ][  \acronym{allow-none}  ][  \acronym{type}   int]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
