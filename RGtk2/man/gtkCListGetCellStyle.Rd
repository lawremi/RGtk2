\alias{gtkCListGetCellStyle}
\name{gtkCListGetCellStyle}
\title{gtkCListGetCellStyle}
\description{
Gets the current style of the specified cell.
\strong{WARNING: \code{gtk_clist_get_cell_style} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetCellStyle(object, row, column)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{row}}{[integer] The row of the cell.}
\item{\verb{column}}{[integer] The column of the cell.}
}
\value{[\verb{\link{GtkStyle}}] A \verb{\link{GtkStyle}} object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
