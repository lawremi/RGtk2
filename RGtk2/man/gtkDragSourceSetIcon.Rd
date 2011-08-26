\alias{gtkDragSourceSetIcon}
\name{gtkDragSourceSetIcon}
\title{gtkDragSourceSetIcon}
\description{Sets the icon that will be used for drags from a particular widget
from a pixmap/mask. GTK+ retains references for the arguments, and
will release them when they are no longer needed.
Use \code{\link{gtkDragSourceSetIconPixbuf}} instead.}
\usage{gtkDragSourceSetIcon(object, colormap, pixmap, mask = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{colormap}}{the colormap of the icon}
\item{\verb{pixmap}}{the image data for the icon}
\item{\verb{mask}}{the transparency mask for an image. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
