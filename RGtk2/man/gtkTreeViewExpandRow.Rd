\alias{gtkTreeViewExpandRow}
\name{gtkTreeViewExpandRow}
\title{gtkTreeViewExpandRow}
\description{Opens the row so its children are visible.}
\usage{gtkTreeViewExpandRow(object, path, open.all)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{path}}{path to a row}
\item{\verb{open.all}}{whether to recursively expand, or just expand immediate children}
}
\value{[logical] \code{TRUE} if the row existed and had children}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
