\alias{gtkTreeViewColumnCellGetPosition}
\name{gtkTreeViewColumnCellGetPosition}
\title{gtkTreeViewColumnCellGetPosition}
\description{Obtains the horizontal position and size of a cell in a column. If the
cell is not found in the column, \code{start.pos} and \code{width} are not changed and
\code{FALSE} is returned.}
\usage{gtkTreeViewColumnCellGetPosition(object, cell.renderer)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeViewColumn}}}
\item{\verb{cell.renderer}}{a \code{\link{GtkCellRenderer}}}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{cell} belongs to \code{tree.column}.}
\item{\verb{start.pos}}{return location for the horizontal position of \code{cell} within
\code{tree.column}, may be \code{NULL}}
\item{\verb{width}}{return location for the width of \code{cell}, may be \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
