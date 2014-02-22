\alias{gtkTreeViewInsertColumnWithAttributes}
\name{gtkTreeViewInsertColumnWithAttributes}
\title{gtkTreeViewInsertColumnWithAttributes}
\description{Creates a new \code{\link{GtkTreeViewColumn}} and inserts it into the \code{tree.view} at
\code{position}.  If \code{position} is -1, then the newly created column is inserted at
the end.  The column is initialized with the attributes given. If \code{tree.view}
has "fixed_height" mode enabled, then the new column will have its sizing
property set to be GTK_TREE_VIEW_COLUMN_FIXED.}
\usage{gtkTreeViewInsertColumnWithAttributes(object, position, title, 
    cell, ...)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}}
\item{\verb{position}}{The position to insert the new column in.}
\item{\verb{title}}{The title to set the header to.}
\item{\verb{cell}}{The \code{\link{GtkCellRenderer}}.}
\item{\verb{...}}{The number of columns in \code{tree.view} after insertion.}
}
\value{[integer] The number of columns in \code{tree.view} after insertion.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
