\alias{gtkTreeViewGetCellArea}
\name{gtkTreeViewGetCellArea}
\title{gtkTreeViewGetCellArea}
\description{Fills the bounding rectangle in bin_window coordinates for the cell at the
row specified by \code{path} and the column specified by \code{column}.  If \code{path} is
\code{NULL}, or points to a path not currently displayed, the \code{y} and \code{height} fields
of the rectangle will be filled with 0. If \code{column} is \code{NULL}, the \code{x} and \code{width}
fields will be filled with 0.  The sum of all cell rects does not cover the
entire tree; there are extra pixels in between rows, for example. The
returned rectangle is equivalent to the \code{cell.area} passed to
\code{\link{gtkCellRendererRender}}.  This function is only valid if \code{tree.view} is
realized.}
\usage{gtkTreeViewGetCellArea(object, path, column)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}} for the row, or \code{NULL} to get only horizontal coordinates. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{column}}{a \code{\link{GtkTreeViewColumn}} for the column, or \code{NULL} to get only vertical coordinates. \emph{[  \acronym{allow-none}  ]}}
}
\value{
A list containing the following elements:
\item{\verb{rect}}{rectangle to fill with cell rect}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
