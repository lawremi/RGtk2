\alias{gtkTreeSortableSetDefaultSortFunc}
\name{gtkTreeSortableSetDefaultSortFunc}
\title{gtkTreeSortableSetDefaultSortFunc}
\description{Sets the default comparison function used when sorting to be \code{sort.func}.  
If the current sort column id of \code{sortable} is
\code{GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID}, then the model will sort using 
this function.}
\usage{gtkTreeSortableSetDefaultSortFunc(object, sort.func, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeSortable}}]  A \verb{\link{GtkTreeSortable}}}
\item{\verb{sort.func}}{[\verb{\link{GtkTreeIterCompareFunc}}]  The comparison function}
\item{\verb{user.data}}{[R object]  User data to pass to \code{sort.func}, or \code{NULL}}
}
\details{If \code{sort.func} is \code{NULL}, then there will be no default comparison function.
This means that once the model  has been sorted, it can't go back to the
default state. In this case, when the current sort column id of \code{sortable} is
GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID, the model will be unsorted.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
