\alias{gtkStatusIconGetStock}
\name{gtkStatusIconGetStock}
\title{gtkStatusIconGetStock}
\description{Gets the id of the stock icon being displayed by the \code{\link{GtkStatusIcon}}.
The storage type of the status icon must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_STOCK} (see \code{\link{gtkStatusIconGetStorageType}}).}
\usage{gtkStatusIconGetStock(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}}
\details{Since 2.10}
\value{[character] stock id of the displayed stock icon,
or \code{NULL} if the image is empty.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
