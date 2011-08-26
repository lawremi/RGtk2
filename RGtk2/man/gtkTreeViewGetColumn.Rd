\alias{gtkTreeViewGetColumn}
\name{gtkTreeViewGetColumn}
\title{gtkTreeViewGetColumn}
\description{Gets the \code{\link{GtkTreeViewColumn}} at the given position in the \verb{tree_view}.}
\usage{gtkTreeViewGetColumn(object, n)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}.}
\item{\verb{n}}{The position of the column, counting from 0.}
}
\value{[\code{\link{GtkTreeViewColumn}}] The \code{\link{GtkTreeViewColumn}}, or \code{NULL} if the position is outside the
range of columns.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
