\alias{gtkDragSourceSetIconPixbuf}
\name{gtkDragSourceSetIconPixbuf}
\title{gtkDragSourceSetIconPixbuf}
\description{Sets the icon that will be used for drags from a particular widget
from a \code{\link{GdkPixbuf}}. GTK+ retains a reference for \code{pixbuf} and will 
release it when it is no longer needed.}
\usage{gtkDragSourceSetIconPixbuf(object, pixbuf)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{pixbuf}}{[\code{\link{GdkPixbuf}}]  the \code{\link{GdkPixbuf}} for the drag icon}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
