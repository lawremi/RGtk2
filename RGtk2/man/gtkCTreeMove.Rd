\alias{gtkCTreeMove}
\name{gtkCTreeMove}
\title{gtkCTreeMove}
\description{
Move a node in the tree to another location.
\strong{WARNING: \code{gtk_ctree_move} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeMove(object, node, new.parent = NULL, new.sibling = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The node to be moved.}
\item{\code{new.parent}}{[\code{\link{GtkCTreeNode}}] The new parent-to-be of the node.}
\item{\code{new.sibling}}{[\code{\link{GtkCTreeNode}}] The new sibling-to-be of the node.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
