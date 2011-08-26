\alias{gtkCTreePreRecursiveToDepth}
\name{gtkCTreePreRecursiveToDepth}
\title{gtkCTreePreRecursiveToDepth}
\description{
Recursively apply a function to nodes up to a certain depth.
The function is called for each node after it has been called
for that node's children.
\strong{WARNING: \code{gtk_ctree_pre_recursive_to_depth} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreePreRecursiveToDepth(object, node, depth, func, data = NULL)}
\arguments{
\item{\verb{object}}{The node where to start.}
\item{\verb{node}}{The maximum absolute depth for applying the function.  If depth is negative, this function just calls \code{\link{gtkCTreePostRecursive}}.}
\item{\verb{depth}}{The function to apply to each node.}
\item{\verb{func}}{A closure argument given to each invocation of the function.}
\item{\verb{data}}{\emph{undocumented
}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
