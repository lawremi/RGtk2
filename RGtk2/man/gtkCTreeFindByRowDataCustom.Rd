\alias{gtkCTreeFindByRowDataCustom}
\name{gtkCTreeFindByRowDataCustom}
\title{gtkCTreeFindByRowDataCustom}
\description{
Find the first node under \code{node} whose row data pointer fulfills
a custom criterion.
\strong{WARNING: \code{gtk_ctree_find_by_row_data_custom} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeFindByRowDataCustom(object, node, data = NULL, func)}
\arguments{
\item{\verb{object}}{\emph{undocumented
}}
\item{\verb{node}}{The node where to start searching.}
\item{\verb{data}}{User data for the criterion function.}
\item{\verb{func}}{The criterion function.}
}
\value{[\code{\link{GtkCTreeNode}}] The first node found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
