\alias{gtkOffscreenWindowGetPixbuf}
\name{gtkOffscreenWindowGetPixbuf}
\title{gtkOffscreenWindowGetPixbuf}
\description{Retrieves a snapshot of the contained widget in the form of
a \code{\link{GdkPixbuf}}.  This is a new pixbuf with a reference count of 1,
and the application should unreference it once it is no longer
needed.}
\usage{gtkOffscreenWindowGetPixbuf(object)}
\arguments{\item{\verb{object}}{the \code{\link{GtkOffscreenWindow}} contained widget.}}
\details{Since 2.20}
\value{[\code{\link{GdkPixbuf}}] A \code{\link{GdkPixbuf}} pointer, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
