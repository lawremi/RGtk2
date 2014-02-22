\alias{gtkTreeSortableSetSortFunc}
\name{gtkTreeSortableSetSortFunc}
\title{gtkTreeSortableSetSortFunc}
\description{Sets the comparison function used when sorting to be \code{sort.func}. If the
current sort column id of \code{sortable} is the same as \code{sort.column.id}, then 
the model will sort using this function.}
\usage{gtkTreeSortableSetSortFunc(object, sort.column.id, sort.func, 
    user.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeSortable}}}
\item{\verb{sort.column.id}}{the sort column id to set the function for}
\item{\verb{sort.func}}{The comparison function}
\item{\verb{user.data}}{User data to pass to \code{sort.func}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
