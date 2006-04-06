\alias{gtkTreeSortableSetSortColumnId}
\name{gtkTreeSortableSetSortColumnId}
\title{gtkTreeSortableSetSortColumnId}
\description{Sets the current sort column to be \code{sort.column.id}.  The \code{sortable} will
resort itself to reflect this change, after emitting a
GtkTreeSortable::sort\_column\_changed signal.  If \code{sort.column.id} is
\code{GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID}, then the default sort function
will be used, if it is set.}
\usage{gtkTreeSortableSetSortColumnId(object, sort.column.id, order)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeSortable}}]  A \code{\link{GtkTreeSortable}}}
\item{\code{sort.column.id}}{[integer]  the sort column id to set}
\item{\code{order}}{[\code{\link{GtkSortType}}]  The sort order of the column}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
