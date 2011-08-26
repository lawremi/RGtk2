\alias{gtkTreeViewAppendColumn}
\name{gtkTreeViewAppendColumn}
\title{gtkTreeViewAppendColumn}
\description{Appends \code{column} to the list of columns. If \code{tree.view} has "fixed_height"
mode enabled, then \code{column} must have its "sizing" property set to be
GTK_TREE_VIEW_COLUMN_FIXED.}
\usage{gtkTreeViewAppendColumn(object, column)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}.}
\item{\verb{column}}{The \code{\link{GtkTreeViewColumn}} to add.}
}
\value{[integer] The number of columns in \code{tree.view} after appending.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
