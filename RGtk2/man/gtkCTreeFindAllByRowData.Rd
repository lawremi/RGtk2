\alias{gtkCTreeFindAllByRowData}
\name{gtkCTreeFindAllByRowData}
\title{gtkCTreeFindAllByRowData}
\description{
Finds all nodes in the tree under \code{node} that have the given user data pointer.
\strong{WARNING: \code{gtk_ctree_find_all_by_row_data} is deprecated and should not be used in newly-written code.  
Finds all nodes in the tree under \code{node} that have the given user data pointer.}
}
\usage{gtkCTreeFindAllByRowData(object, node, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{data}}{[R object] }
}
\value{[list] A list of nodes that have the given data pointer.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
