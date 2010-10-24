\alias{gtkCListGetCellType}
\name{gtkCListGetCellType}
\title{gtkCListGetCellType}
\description{
Checks the type of cell at the location specified.
\strong{WARNING: \code{gtk_clist_get_cell_type} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetCellType(object, row, column)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{row}}{The row of the cell.}
\item{\verb{column}}{The column of the cell.}
}
\value{[\code{\link{GtkCellType}}] A \code{\link{GtkCellType}} value describing the cell.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
