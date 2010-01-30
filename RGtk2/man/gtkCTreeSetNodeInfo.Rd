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
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] }
\item{\verb{text}}{[character] The text to be in the tree column.}
\item{\verb{spacing}}{[raw] }
\item{\verb{pixmap.closed}}{[\verb{\link{GdkPixmap}}] }
\item{\verb{mask.closed}}{[\verb{\link{GdkBitmap}}] }
\item{\verb{pixmap.opened}}{[\verb{\link{GdkPixmap}}] }
\item{\verb{mask.opened}}{[\verb{\link{GdkBitmap}}] }
\item{\verb{is.leaf}}{[logical] }
\item{\verb{expanded}}{[logical] }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
