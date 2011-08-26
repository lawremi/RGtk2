\alias{gtkTreeViewColumnGetSortColumnId}
\name{gtkTreeViewColumnGetSortColumnId}
\title{gtkTreeViewColumnGetSortColumnId}
\description{Gets the logical \code{sort.column.id} that the model sorts on when this
column is selected for sorting.
See \code{\link{gtkTreeViewColumnSetSortColumnId}}.}
\usage{gtkTreeViewColumnGetSortColumnId(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTreeViewColumn}}}}
\value{[integer] the current \code{sort.column.id} for this column, or -1 if
this column can't be used for sorting.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
