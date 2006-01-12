\alias{gtkCListMoveto}
\name{gtkCListMoveto}
\title{gtkCListMoveto}
\description{
Tells the CList widget to visually move to the specified 
row and column.
\strong{WARNING: \code{gtk_clist_moveto} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListMoveto(object, row, column, row.align, col.align)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{row}}{[integer] The row to which to move.}
\item{\code{column}}{[integer] The column to which to move.}
\item{\code{row.align}}{[numeric] A value between 0 and 1 that describes the positioning of 
the row in relation to the viewable area of the CList's contents.}
\item{\code{col.align}}{[numeric] A value between 0 and 1 that describes the positioning of 
the column in relation to the viewable area of the CList's contents.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
