\alias{gtkStatusIconGetPixbuf}
\name{gtkStatusIconGetPixbuf}
\title{gtkStatusIconGetPixbuf}
\description{Gets the \verb{\link{GdkPixbuf}} being displayed by the \verb{\link{GtkStatusIcon}}.
The storage type of the status icon must be \code{GTK_IMAGE_EMPTY} or
\code{GTK_IMAGE_PIXBUF} (see \code{\link{gtkStatusIconGetStorageType}}).
The caller of this function does not own a reference to the
returned pixbuf.}
\usage{gtkStatusIconGetPixbuf(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkStatusIcon}}]  a \verb{\link{GtkStatusIcon}}}}
\details{  Since  2.10}
\value{[\verb{\link{GdkPixbuf}}]  the displayed pixbuf, or \code{NULL} if the image is empty.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
