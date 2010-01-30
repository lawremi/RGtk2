\alias{gtkImageGetStock}
\name{gtkImageGetStock}
\title{gtkImageGetStock}
\description{Gets the stock icon name and size being displayed by the \verb{\link{GtkImage}}.
The storage type of the image must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_STOCK} (see \code{\link{gtkImageGetStorageType}}).}
\usage{gtkImageGetStock(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkImage}}]  a \verb{\link{GtkImage}}}}
\value{
A list containing the following elements:
\item{\verb{stock.id}}{[character]  place to store a stock icon name}
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  place to store a stock icon size}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
