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
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{row}}{[integer] The row to which to move.}
\item{\verb{column}}{[integer] The column to which to move.}
\item{\verb{row.align}}{[numeric] A value between 0 and 1 that describes the positioning of 
the row in relation to the viewable area of the CList's contents.}
\item{\verb{col.align}}{[numeric] A value between 0 and 1 that describes the positioning of 
the column in relation to the viewable area of the CList's contents.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
