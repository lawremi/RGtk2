\alias{gtkStatusIconGetPixbuf}
\name{gtkStatusIconGetPixbuf}
\title{gtkStatusIconGetPixbuf}
\description{Gets the \code{\link{GdkPixbuf}} being displayed by the \code{\link{GtkStatusIcon}}.
The storage type of the status icon must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_PIXBUF} (see \code{\link{gtkStatusIconGetStorageType}}).
The caller of this function does not own a reference to the
returned pixbuf.}
\usage{gtkStatusIconGetPixbuf(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkStatusIcon}}}}
\details{Since 2.10}
\value{[\code{\link{GdkPixbuf}}] the displayed pixbuf, or \code{NULL} if the image is empty.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
