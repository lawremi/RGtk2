\alias{gtkTreeViewColumnCellSetCellData}
\name{gtkTreeViewColumnCellSetCellData}
\title{gtkTreeViewColumnCellSetCellData}
\description{Sets the cell renderer based on the \code{tree.model} and \code{iter}.  That is, for
every attribute mapping in \code{tree.column}, it will get a value from the set
column on the \code{iter}, and use that value to set the attribute on the cell
renderer.  This is used primarily by the \code{\link{GtkTreeView}}.}
\usage{gtkTreeViewColumnCellSetCellData(object, tree.model, iter, is.expander, is.expanded)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeViewColumn}}]  A \code{\link{GtkTreeViewColumn}}.}
\item{\code{tree.model}}{[\code{\link{GtkTreeModel}}]  The \code{\link{GtkTreeModel}} to to get the cell renderers attributes from.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}} to to get the cell renderer's attributes from.}
\item{\code{is.expander}}{[logical] \code{TRUE}, if the row has children}
\item{\code{is.expanded}}{[logical] \code{TRUE}, if the row has visible children}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
