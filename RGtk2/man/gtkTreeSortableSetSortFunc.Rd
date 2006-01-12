\alias{gtkTreeSortableSetSortFunc}
\name{gtkTreeSortableSetSortFunc}
\title{gtkTreeSortableSetSortFunc}
\description{Sets the comparison function used when sorting to be \code{sort.func}.  If the
current sort column id of \code{sortable} is the same as \code{sort.column.id}, then the
model will sort using this function.}
\usage{gtkTreeSortableSetSortFunc(object, sort.column.id, sort.func, user.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeSortable}}]  A \code{\link{GtkTreeSortable}}}
\item{\code{sort.column.id}}{[integer]  the sort column id to set the function for}
\item{\code{sort.func}}{[\code{\link{GtkTreeIterCompareFunc}}]  The comparison function}
\item{\code{user.data}}{[R object]  User data to pass to \code{sort.func}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
