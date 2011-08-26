\alias{gtkIconViewCreateDragIcon}
\name{gtkIconViewCreateDragIcon}
\title{gtkIconViewCreateDragIcon}
\description{Creates a \code{\link{GdkPixmap}} representation of the item at \code{path}.  
This image is used for a drag icon.}
\usage{gtkIconViewCreateDragIcon(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconView}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}} in \code{icon.view}}
}
\details{Since 2.8}
\value{[\code{\link{GdkPixmap}}] a newly-allocated pixmap of the drag icon.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
