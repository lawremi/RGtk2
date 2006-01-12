\alias{gtkTreeViewColumnSetCellDataFunc}
\name{gtkTreeViewColumnSetCellDataFunc}
\title{gtkTreeViewColumnSetCellDataFunc}
\description{Sets the \code{GtkTreeViewColumnFunc} to use for the column.  This
function is used instead of the standard attributes mapping for
setting the column value, and should set the value of \code{tree.column}'s
cell renderer as appropriate.  \code{func} may be \code{NULL} to remove an
older one.}
\usage{gtkTreeViewColumnSetCellDataFunc(object, cell.renderer, func, func.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeViewColumn}}]  A \code{\link{GtkTreeViewColumn}}}
\item{\code{cell.renderer}}{[\code{\link{GtkCellRenderer}}]  A \code{\link{GtkCellRenderer}}}
\item{\code{func}}{[\code{\link{GtkTreeCellDataFunc}}]  The \code{GtkTreeViewColumnFunc} to use. }
\item{\code{func.data}}{[R object]  The user data for \code{func}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
