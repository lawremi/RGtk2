\alias{gtkCellLayoutSetCellDataFunc}
\name{gtkCellLayoutSetCellDataFunc}
\title{gtkCellLayoutSetCellDataFunc}
\description{Sets the \code{\link{GtkCellLayoutDataFunc}} to use for \code{cell.layout}. This function
is used instead of the standard attributes mapping for setting the
column value, and should set the value of \code{cell.layout}'s cell renderer(s)
as appropriate. \code{func} may be \code{NULL} to remove and older one.}
\usage{gtkCellLayoutSetCellDataFunc(object, cell, func, func.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkCellLayout}}.}
\item{\verb{cell}}{A \code{\link{GtkCellRenderer}}.}
\item{\verb{func}}{The \code{\link{GtkCellLayoutDataFunc}} to use.}
\item{\verb{func.data}}{The user data for \code{func}.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
