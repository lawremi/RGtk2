\alias{gtkTreeViewCreateRowDragIcon}
\name{gtkTreeViewCreateRowDragIcon}
\title{gtkTreeViewCreateRowDragIcon}
\description{Creates a \code{\link{GdkPixmap}} representation of the row at \code{path}.  
This image is used for a drag icon.}
\usage{gtkTreeViewCreateRowDragIcon(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}} in \code{tree.view}}
}
\value{[\code{\link{GdkPixmap}}] a newly-allocated pixmap of the drag icon.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
