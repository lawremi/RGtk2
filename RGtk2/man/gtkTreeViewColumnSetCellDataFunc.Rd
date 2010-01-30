\alias{gtkTreeViewColumnSetCellDataFunc}
\name{gtkTreeViewColumnSetCellDataFunc}
\title{gtkTreeViewColumnSetCellDataFunc}
\description{Sets the \verb{GtkTreeViewColumnFunc} to use for the column.  This
function is used instead of the standard attributes mapping for
setting the column value, and should set the value of \code{tree.column}'s
cell renderer as appropriate.  \code{func} may be \code{NULL} to remove an
older one.}
\usage{gtkTreeViewColumnSetCellDataFunc(object, cell.renderer, func, func.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}}
\item{\verb{cell.renderer}}{[\verb{\link{GtkCellRenderer}}]  A \verb{\link{GtkCellRenderer}}}
\item{\verb{func}}{[\verb{\link{GtkTreeCellDataFunc}}]  The \verb{GtkTreeViewColumnFunc} to use. }
\item{\verb{func.data}}{[R object]  The user data for \code{func}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
