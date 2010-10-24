\alias{gtkTreeSortableSetSortColumnId}
\name{gtkTreeSortableSetSortColumnId}
\title{gtkTreeSortableSetSortColumnId}
\description{Sets the current sort column to be \code{sort.column.id}. The \code{sortable} will
resort itself to reflect this change, after emitting a
\code{\link{gtkTreeSortableSortColumnChanged}} signal. \code{sortable} may either be 
a regular column id, or one of the following special values:
\describe{
\item{\code{GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID}}{\emph{undocumented
}}
\item{\code{GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID}}{\emph{undocumented
}}
}}
\usage{gtkTreeSortableSetSortColumnId(object, sort.column.id, order)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeSortable}}}
\item{\verb{sort.column.id}}{the sort column id to set}
\item{\verb{order}}{The sort order of the column}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
