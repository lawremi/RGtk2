\alias{gtkCTreeNodeGetPixmap}
\name{gtkCTreeNodeGetPixmap}
\title{gtkCTreeNodeGetPixmap}
\description{

\strong{WARNING: \code{gtk_ctree_node_get_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNodeGetPixmap(object, node, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] }
\item{\verb{column}}{[integer] }
}
\value{
A list containing the following elements:
\item{retval}{[logical] True if the given cell contains a pixmap.}
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}] If nonnull, the pointer to the pixmap is returned through this.}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}] If nonnull, the pointer to the mask is returned through this.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
