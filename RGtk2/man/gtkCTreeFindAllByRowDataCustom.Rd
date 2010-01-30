\alias{gtkCTreeFindAllByRowDataCustom}
\name{gtkCTreeFindAllByRowDataCustom}
\title{gtkCTreeFindAllByRowDataCustom}
\description{
Find all nodes under \code{node} whose row data pointer fulfills 
a custom criterion.
\strong{WARNING: \code{gtk_ctree_find_all_by_row_data_custom} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeFindAllByRowDataCustom(object, node, data = NULL, func)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] The node where to start searching.}
\item{\verb{data}}{[R object] User data for the criterion function.}
\item{\verb{func}}{[GCompareFunc] The criterion function.}
}
\value{[list] A list of all nodes found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
