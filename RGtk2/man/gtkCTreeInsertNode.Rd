\alias{gtkCTreeInsertNode}
\name{gtkCTreeInsertNode}
\title{gtkCTreeInsertNode}
\description{
Insert a new node to the tree. The position is specified through
the parent-sibling notation, as explained in the introduction above.
\strong{WARNING: \code{gtk_ctree_insert_node} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeInsertNode(object, parent, sibling, text, spacing = 5, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf = 1, expanded = 0)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] The \code{\link{GtkCTree}} widget.}
\item{\code{parent}}{[\code{\link{GtkCTreeNode}}] The parent node to be.}
\item{\code{sibling}}{[\code{\link{GtkCTreeNode}}] The sibling node to be.}
\item{\code{text}}{[character] The texts to be shown in each column.}
\item{\code{spacing}}{[raw] The extra space between the pixmap and the text.}
\item{\code{pixmap.closed}}{[\code{\link{GdkPixmap}}] The pixmap to be used when the node is collapsed. Can be \code{NULL}.}
\item{\code{mask.closed}}{[\code{\link{GdkBitmap}}] The mask for the above pixmap. Can be \code{NULL}.}
\item{\code{pixmap.opened}}{[\code{\link{GdkPixmap}}] The pixmap to be used when the children are visible. Can be \code{NULL}.}
\item{\code{mask.opened}}{[\code{\link{GdkBitmap}}] The mask for the above pixmap. Can be \code{NULL}.}
\item{\code{is.leaf}}{[logical] Whether this node is going to be a leaf.}
\item{\code{expanded}}{[logical] Whether this node should start out expanded or not.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
