\alias{gtkTreeViewInsertColumn}
\name{gtkTreeViewInsertColumn}
\title{gtkTreeViewInsertColumn}
\description{This inserts the \code{column} into the \code{tree.view} at \code{position}.  If \code{position} is
-1, then the column is inserted at the end. If \code{tree.view} has
"fixed_height" mode enabled, then \code{column} must have its "sizing" property
set to be GTK_TREE_VIEW_COLUMN_FIXED.}
\usage{gtkTreeViewInsertColumn(object, column, position)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}.}
\item{\verb{column}}{The \code{\link{GtkTreeViewColumn}} to be inserted.}
\item{\verb{position}}{The position to insert \code{column} in.}
}
\value{[integer] The number of columns in \code{tree.view} after insertion.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
