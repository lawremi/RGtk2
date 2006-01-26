\alias{gtkCTreeSetNodeInfo}
\name{gtkCTreeSetNodeInfo}
\title{gtkCTreeSetNodeInfo}
\description{
Change the information. Most parameters correspond 
to the parameters of \code{\link{gtkCTreeInsertNode}}.
\strong{WARNING: \code{gtk_ctree_set_node_info} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeSetNodeInfo(object, node, text, spacing, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf, expanded)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{text}}{[character] The text to be in the tree column.}
\item{\code{spacing}}{[integer] }
\item{\code{pixmap.closed}}{[\code{\link{GdkPixmap}}] }
\item{\code{mask.closed}}{[\code{\link{GdkBitmap}}] }
\item{\code{pixmap.opened}}{[\code{\link{GdkPixmap}}] }
\item{\code{mask.opened}}{[\code{\link{GdkBitmap}}] }
\item{\code{is.leaf}}{[logical] }
\item{\code{expanded}}{[logical] }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
