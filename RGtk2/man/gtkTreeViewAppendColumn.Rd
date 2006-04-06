\alias{gtkTreeViewAppendColumn}
\name{gtkTreeViewAppendColumn}
\title{gtkTreeViewAppendColumn}
\description{Appends \code{column} to the list of columns. If \code{tree.view} has "fixed\_height"
mode enabled, then \code{column} must have its "sizing" property set to be
GTK\_TREE\_VIEW\_COLUMN\_FIXED.}
\usage{gtkTreeViewAppendColumn(object, column)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}.}
\item{\code{column}}{[\code{\link{GtkTreeViewColumn}}]  The \code{\link{GtkTreeViewColumn}} to add.}
}
\value{[integer]  The number of columns in \code{tree.view} after appending.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
