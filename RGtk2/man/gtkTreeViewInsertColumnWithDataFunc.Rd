\alias{gtkTreeViewInsertColumnWithDataFunc}
\name{gtkTreeViewInsertColumnWithDataFunc}
\title{gtkTreeViewInsertColumnWithDataFunc}
\description{Convenience function that inserts a new column into the \code{\link{GtkTreeView}}
with the given cell renderer and a \verb{GtkCellDataFunc} to set cell renderer
attributes (normally using data from the model). See also
\code{\link{gtkTreeViewColumnSetCellDataFunc}}, \code{\link{gtkTreeViewColumnPackStart}}.
If \code{tree.view} has "fixed_height" mode enabled, then the new column will have its
"sizing" property set to be GTK_TREE_VIEW_COLUMN_FIXED.}
\usage{gtkTreeViewInsertColumnWithDataFunc(object, position, title, 
    cell, func, data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{position}}{Position to insert, -1 for append}
\item{\verb{title}}{column title}
\item{\verb{cell}}{cell renderer for column}
\item{\verb{func}}{function to set attributes of cell renderer}
\item{\verb{data}}{data for \code{func}}
}
\value{[integer] number of columns in the tree view post-insert}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
