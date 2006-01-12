\alias{gtkTreeViewExpandRow}
\name{gtkTreeViewExpandRow}
\title{gtkTreeViewExpandRow}
\description{Opens the row so its children are visible.}
\usage{gtkTreeViewExpandRow(object, path, open.all)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  path to a row}
\item{\code{open.all}}{[logical]  whether to recursively expand, or just expand immediate children}
}
\value{[logical]  \code{TRUE} if the row existed and had children}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
