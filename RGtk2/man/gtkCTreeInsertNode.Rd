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
\item{\verb{object}}{[\verb{\link{GtkCTree}}] The \verb{\link{GtkCTree}} widget.}
\item{\verb{parent}}{[\verb{\link{GtkCTreeNode}}] The parent node to be.}
\item{\verb{sibling}}{[\verb{\link{GtkCTreeNode}}] The sibling node to be.}
\item{\verb{text}}{[character] The texts to be shown in each column.}
\item{\verb{spacing}}{[raw] The extra space between the pixmap and the text.}
\item{\verb{pixmap.closed}}{[\verb{\link{GdkPixmap}}] The pixmap to be used when the node is collapsed. Can be \code{NULL}.}
\item{\verb{mask.closed}}{[\verb{\link{GdkBitmap}}] The mask for the above pixmap. Can be \code{NULL}.}
\item{\verb{pixmap.opened}}{[\verb{\link{GdkPixmap}}] The pixmap to be used when the children are visible. Can be \code{NULL}.}
\item{\verb{mask.opened}}{[\verb{\link{GdkBitmap}}] The mask for the above pixmap. Can be \code{NULL}.}
\item{\verb{is.leaf}}{[logical] Whether this node is going to be a leaf.}
\item{\verb{expanded}}{[logical] Whether this node should start out expanded or not.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
