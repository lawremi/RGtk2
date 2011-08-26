\alias{gtkOffscreenWindowGetPixmap}
\name{gtkOffscreenWindowGetPixmap}
\title{gtkOffscreenWindowGetPixmap}
\description{Retrieves a snapshot of the contained widget in the form of
a \code{\link{GdkPixmap}}.  If you need to keep this around over window
resizes then you should add a reference to it.}
\usage{gtkOffscreenWindowGetPixmap(object)}
\arguments{\item{\verb{object}}{the \code{\link{GtkOffscreenWindow}} contained widget.}}
\details{Since 2.20}
\value{[\code{\link{GdkPixmap}}] A \code{\link{GdkPixmap}} pointer to the offscreen pixmap, or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
