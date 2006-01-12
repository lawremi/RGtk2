\alias{gtkImageGetStock}
\name{gtkImageGetStock}
\title{gtkImageGetStock}
\description{Gets the stock icon name and size being displayed by the \code{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_STOCK} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetStock(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkImage}}]  a \code{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\code{stock.id}}{[character]  place to store a stock icon name}
\item{\code{size}}{[\code{\link{GtkIconSize}}]  place to store a stock icon size}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
