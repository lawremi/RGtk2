\alias{gtkCTreeMove}
\name{gtkCTreeMove}
\title{gtkCTreeMove}
\description{
Move a node in the tree to another location.
\strong{WARNING: \code{gtk_ctree_move} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeMove(object, node, new.parent = NULL, new.sibling = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] The node to be moved.}
\item{\verb{new.parent}}{[\verb{\link{GtkCTreeNode}}] The new parent-to-be of the node.}
\item{\verb{new.sibling}}{[\verb{\link{GtkCTreeNode}}] The new sibling-to-be of the node.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
