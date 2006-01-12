\alias{gtkCTreeNodeMoveto}
\name{gtkCTreeNodeMoveto}
\title{gtkCTreeNodeMoveto}
\description{
This function makes the given column of the given node visible by
scrolling.
\strong{WARNING: \code{gtk_ctree_node_moveto} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeNodeMoveto(object, node, column, row.align, col.align)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCTree}}] }
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The node to be made visible.}
\item{\code{column}}{[integer] The column to be made visible.}
\item{\code{row.align}}{[numeric] Where in the window the row should appear.}
\item{\code{col.align}}{[numeric] Where in the window the column should appear.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
