\alias{gtkCTreePreRecursive}
\name{gtkCTreePreRecursive}
\title{gtkCTreePreRecursive}
\description{
Recursively apply a function to all nodes of the tree at or below a certain
node.
The function is called for each node after it has been called
for its parent.
\strong{WARNING: \code{gtk_ctree_pre_recursive} is deprecated and should not be used in newly-written code.  
Recursively apply a function to all nodes of the tree at or below a certain
node.
The function is called for each node after it has been called
for its parent.}
}
\usage{gtkCTreePreRecursive(object, node, func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The node where to start. \code{NULL} means to start at the root.}
\item{\code{func}}{[\code{\link{GtkCTreeFunc}}] The function to apply to each node.}
\item{\code{data}}{[R object] A closure argument given to each invocation of the function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
