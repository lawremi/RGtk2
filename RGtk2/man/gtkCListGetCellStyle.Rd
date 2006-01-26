\alias{gtkCListGetCellStyle}
\name{gtkCListGetCellStyle}
\title{gtkCListGetCellStyle}
\description{
Gets the current style of the specified cell.
\strong{WARNING: \code{gtk_clist_get_cell_style} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetCellStyle(object, row, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row of the cell.}
\item{\code{column}}{[integer] The column of the cell.}
}
\value{[\code{\link{GtkStyle}}] A \code{\link{GtkStyle}} object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
