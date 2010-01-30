\alias{gtkTreeViewGetColumn}
\name{gtkTreeViewGetColumn}
\title{gtkTreeViewGetColumn}
\description{Gets the \verb{\link{GtkTreeViewColumn}} at the given position in the \verb{tree_view}.}
\usage{gtkTreeViewGetColumn(object, n)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}.}
\item{\verb{n}}{[integer]  The position of the column, counting from 0.}
}
\value{[\verb{\link{GtkTreeViewColumn}}]  The \verb{\link{GtkTreeViewColumn}}, or \code{NULL} if the position is outside the
range of columns.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
