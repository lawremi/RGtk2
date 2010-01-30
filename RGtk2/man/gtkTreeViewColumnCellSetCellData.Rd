\alias{gtkTreeViewColumnCellSetCellData}
\name{gtkTreeViewColumnCellSetCellData}
\title{gtkTreeViewColumnCellSetCellData}
\description{Sets the cell renderer based on the \code{tree.model} and \code{iter}.  That is, for
every attribute mapping in \code{tree.column}, it will get a value from the set
column on the \code{iter}, and use that value to set the attribute on the cell
renderer.  This is used primarily by the \verb{\link{GtkTreeView}}.}
\usage{gtkTreeViewColumnCellSetCellData(object, tree.model, iter, is.expander, is.expanded)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}.}
\item{\verb{tree.model}}{[\verb{\link{GtkTreeModel}}]  The \verb{\link{GtkTreeModel}} to to get the cell renderers attributes from.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The \verb{\link{GtkTreeIter}} to to get the cell renderer's attributes from.}
\item{\verb{is.expander}}{[logical] \code{TRUE}, if the row has children}
\item{\verb{is.expanded}}{[logical] \code{TRUE}, if the row has visible children}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
