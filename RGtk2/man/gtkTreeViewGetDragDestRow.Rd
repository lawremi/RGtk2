\alias{gtkTreeViewGetDragDestRow}
\name{gtkTreeViewGetDragDestRow}
\title{gtkTreeViewGetDragDestRow}
\description{Gets information about the row that is highlighted for feedback.}
\usage{gtkTreeViewGetDragDestRow(object, path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  Return location for the path of the highlighted row, or \code{NULL}.}
}
\value{
A list containing the following elements:
\item{\code{pos}}{[\code{\link{GtkTreeViewDropPosition}}]  Return location for the drop position, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
