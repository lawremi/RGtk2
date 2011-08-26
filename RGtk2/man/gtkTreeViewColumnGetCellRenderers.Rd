\alias{gtkTreeViewColumnGetCellRenderers}
\name{gtkTreeViewColumnGetCellRenderers}
\title{gtkTreeViewColumnGetCellRenderers}
\description{
Returns a newly-allocated \verb{list} of all the cell renderers in the column,
in no particular order.
\strong{WARNING: \code{gtk_tree_view_column_get_cell_renderers} has been deprecated since version 2.18 and should not be used in newly-written code. use \code{\link{gtkCellLayoutGetCells}} instead.}
}
\usage{gtkTreeViewColumnGetCellRenderers(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}}}
\value{[list] A list of \verb{GtkCellRenderers}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
