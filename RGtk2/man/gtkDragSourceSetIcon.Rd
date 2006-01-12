\alias{gtkDragSourceSetIcon}
\name{gtkDragSourceSetIcon}
\title{gtkDragSourceSetIcon}
\description{Sets the icon that will be used for drags from a particular widget
from a pixmap/mask. GTK+ retains references for the arguments, and 
will release them when they are no longer needed.
Use \code{\link{gtkDragSourceSetIconPixbuf}} instead.}
\usage{gtkDragSourceSetIcon(object, colormap, pixmap, mask = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{colormap}}{[\code{\link{GdkColormap}}]  the colormap of the icon}
\item{\code{pixmap}}{[\code{\link{GdkPixmap}}]  the image data for the icon}
\item{\code{mask}}{[\code{\link{GdkBitmap}}]  the transparency mask for an image.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
