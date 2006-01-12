\alias{gtkTreeViewInsertColumnWithAttributes}
\name{gtkTreeViewInsertColumnWithAttributes}
\title{gtkTreeViewInsertColumnWithAttributes}
\description{Creates a new \code{\link{GtkTreeViewColumn}} and inserts it into the \code{tree.view} at
\code{position}.  If \code{position} is -1, then the newly created column is inserted at
the end.  The column is initialized with the attributes given. If \code{tree.view}
has "fixed_height" mode enabled, then \code{column} must have its sizing
property set to be GTK_TREE_VIEW_COLUMN_FIXED.}
\usage{gtkTreeViewInsertColumnWithAttributes(object, position, title, cell, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}}
\item{\code{position}}{[integer]  The position to insert the new column in.}
\item{\code{title}}{[character]  The title to set the header to.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  The \code{\link{GtkCellRenderer}}.}
\item{\code{...}}{ A list of attributes.}
}
\value{[integer]  The number of columns in \code{tree.view} after insertion.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
