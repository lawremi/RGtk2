\alias{gtkIconViewCreateDragIcon}
\name{gtkIconViewCreateDragIcon}
\title{gtkIconViewCreateDragIcon}
\description{Creates a \verb{\link{GdkPixmap}} representation of the item at \code{path}.  
This image is used for a drag icon.}
\usage{gtkIconViewCreateDragIcon(object, path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconView}}]  a \verb{\link{GtkIconView}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  a \verb{\link{GtkTreePath}} in \code{icon.view}}
}
\details{  Since  2.8}
\value{[\verb{\link{GdkPixmap}}]  a newly-allocated pixmap of the drag icon.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
