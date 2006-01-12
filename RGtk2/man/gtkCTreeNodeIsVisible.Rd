\alias{gtkCTreeNodeIsVisible}
\name{gtkCTreeNodeIsVisible}
\title{gtkCTreeNodeIsVisible}
\description{

\strong{WARNING: \code{gtk_ctree_node_is_visible} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNodeIsVisible(object, node)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
}
\value{[\code{\link{GtkVisibility}}] True if the node is currently inside the bounds of the window.
Note that this function can return true even if the node is not
viewable, if the node's ancestor is visible.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
