\alias{gtkTreeSortableGetSortColumnId}
\name{gtkTreeSortableGetSortColumnId}
\title{gtkTreeSortableGetSortColumnId}
\description{Fills in \code{sort.column.id} and \code{order} with the current sort column and the
order. It returns \code{TRUE} unless the \code{sort.column.id} is 
\code{GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID} or 
\code{GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID}.}
\usage{gtkTreeSortableGetSortColumnId(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeSortable}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the sort column is not one of the special sort
column ids.}
\item{\verb{sort.column.id}}{The sort column id to be filled in}
\item{\verb{order}}{The \code{\link{GtkSortType}} to be filled in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
