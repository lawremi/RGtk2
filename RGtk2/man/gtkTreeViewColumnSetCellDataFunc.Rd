\alias{gtkTreeViewColumnSetCellDataFunc}
\name{gtkTreeViewColumnSetCellDataFunc}
\title{gtkTreeViewColumnSetCellDataFunc}
\description{Sets the \verb{GtkTreeViewColumnFunc} to use for the column.  This
function is used instead of the standard attributes mapping for
setting the column value, and should set the value of \code{tree.column}'s
cell renderer as appropriate.  \code{func} may be \code{NULL} to remove an
older one.}
\usage{gtkTreeViewColumnSetCellDataFunc(object, cell.renderer, func, 
    func.data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}}
\item{\verb{cell.renderer}}{A \code{\link{GtkCellRenderer}}}
\item{\verb{func}}{The \verb{GtkTreeViewColumnFunc} to use.}
\item{\verb{func.data}}{The user data for \code{func}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
