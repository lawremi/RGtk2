\alias{gtkTreeViewGetColumn}
\name{gtkTreeViewGetColumn}
\title{gtkTreeViewGetColumn}
\description{Gets the \code{\link{GtkTreeViewColumn}} at the given position in the \code{tree_view}.}
\usage{gtkTreeViewGetColumn(object, n)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}.}
\item{\code{n}}{[integer]  The position of the column, counting from 0.}
}
\value{[\code{\link{GtkTreeViewColumn}}]  The \code{\link{GtkTreeViewColumn}}, or \code{NULL} if the position is outside the
range of columns.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
