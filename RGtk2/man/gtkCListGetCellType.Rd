\alias{gtkCListGetCellType}
\name{gtkCListGetCellType}
\title{gtkCListGetCellType}
\description{
Checks the type of cell at the location specified.
\strong{WARNING: \code{gtk_clist_get_cell_type} is deprecated and should not be used in newly-written code.  
Checks the type of cell at the location specified.}
}
\usage{gtkCListGetCellType(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row of the cell.}
\item{\code{column}}{[integer] The column of the cell.}
}
\value{[\code{\link{GtkCellType}}] A \code{\link{GtkCellType}} value describing the cell.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
