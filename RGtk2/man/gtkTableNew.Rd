\alias{gtkTableNew}
\name{gtkTableNew}
\title{gtkTableNew}
\description{Used to create a new table widget. An initial size must be given by
specifying how many rows and columns the table should have, although
this can be changed later with \code{\link{gtkTableResize}}.  \code{rows} and \code{columns}
must both be in the range 0 .. 65535.}
\usage{gtkTableNew(rows = NULL, columns = NULL, homogeneous = NULL, 
    show = TRUE)}
\arguments{
\item{\verb{rows}}{The number of rows the new table should have.}
\item{\verb{columns}}{The number of columns the new table should have.}
\item{\verb{homogeneous}}{If set to \code{TRUE}, all table cells are resized to the size of the cell
containing the largest widget.}
}
\value{[\code{\link{GtkWidget}}] A pointer to the the newly created table widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
