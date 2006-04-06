\alias{gtkTreeViewInsertColumnWithDataFunc}
\name{gtkTreeViewInsertColumnWithDataFunc}
\title{gtkTreeViewInsertColumnWithDataFunc}
\description{Convenience function that inserts a new column into the \code{\link{GtkTreeView}}
with the given cell renderer and a \code{GtkCellDataFunc} to set cell renderer
attributes (normally using data from the model). See also
\code{\link{gtkTreeViewColumnSetCellDataFunc}}, \code{\link{gtkTreeViewColumnPackStart}}.
If \code{tree.view} has "fixed\_height" mode enabled, then \code{column} must have its
"sizing" property set to be GTK\_TREE\_VIEW\_COLUMN\_FIXED.}
\usage{gtkTreeViewInsertColumnWithDataFunc(object, position, title, cell, func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{position}}{[integer]  Position to insert, -1 for append}
\item{\code{title}}{[character]  column title}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  cell renderer for column}
\item{\code{func}}{[\code{\link{GtkTreeCellDataFunc}}]  function to set attributes of cell renderer}
\item{\code{data}}{[R object]  data for \code{func}}
}
\value{[integer]  number of columns in the tree view post-insert}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
