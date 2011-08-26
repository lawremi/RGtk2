\alias{gtkTreeViewSetFixedHeightMode}
\name{gtkTreeViewSetFixedHeightMode}
\title{gtkTreeViewSetFixedHeightMode}
\description{Enables or disables the fixed height mode of \code{tree.view}. 
Fixed height mode speeds up \code{\link{GtkTreeView}} by assuming that all 
rows have the same height. 
Only enable this option if all rows are the same height and all
columns are of type \code{GTK_TREE_VIEW_COLUMN_FIXED}.}
\usage{gtkTreeViewSetFixedHeightMode(object, enable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{enable}}{\code{TRUE} to enable fixed height mode}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
