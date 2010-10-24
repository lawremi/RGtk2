\alias{gtkCTreePostRecursiveToDepth}
\name{gtkCTreePostRecursiveToDepth}
\title{gtkCTreePostRecursiveToDepth}
\description{
Recursively apply a function to nodes up to a certain depth.
The function is called for each node after it has been called
for that node's children.
\strong{WARNING: \code{gtk_ctree_post_recursive_to_depth} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreePostRecursiveToDepth(object, node, depth, func, data = NULL)}
\arguments{
\item{\verb{object}}{\emph{undocumented
}}
\item{\verb{node}}{The node where to start.}
\item{\verb{depth}}{The maximum absolute depth for applying the function.  If depth is negative, this function just calls \code{\link{gtkCTreePostRecursive}}.}
\item{\verb{func}}{The function to apply to each node.}
\item{\verb{data}}{A closure argument given to each invocation of the function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
