\alias{gtkCellLayoutSetCellDataFunc}
\name{gtkCellLayoutSetCellDataFunc}
\title{gtkCellLayoutSetCellDataFunc}
\description{Sets the \code{\link{GtkCellLayoutDataFunc}} to use for \code{cell.layout}. This function
is used instead of the standard attributes mapping for setting the
column value, and should set the value of \code{cell.layout}'s cell renderer(s)
as appropriate. \code{func} may be \code{NULL} to remove and older one.}
\usage{gtkCellLayoutSetCellDataFunc(object, cell, func, func.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCellLayout}}]  A \code{\link{GtkCellLayout}}.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}}.}
\item{\code{func}}{[\code{\link{GtkCellLayoutDataFunc}}]  The \code{\link{GtkCellLayoutDataFunc}} to use.}
\item{\code{func.data}}{[R object]  The user data for \code{func}.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
