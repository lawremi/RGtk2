\alias{gtkTreeViewCreateRowDragIcon}
\name{gtkTreeViewCreateRowDragIcon}
\title{gtkTreeViewCreateRowDragIcon}
\description{Creates a \verb{\link{GdkPixmap}} representation of the row at \code{path}.  
This image is used for a drag icon.}
\usage{gtkTreeViewCreateRowDragIcon(object, path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  a \verb{\link{GtkTreePath}} in \code{tree.view}}
}
\value{[\verb{\link{GdkPixmap}}]  a newly-allocated pixmap of the drag icon.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
