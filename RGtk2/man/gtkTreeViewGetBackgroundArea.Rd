\alias{gtkTreeViewGetBackgroundArea}
\name{gtkTreeViewGetBackgroundArea}
\title{gtkTreeViewGetBackgroundArea}
\description{Fills the bounding rectangle in bin_window coordinates for the cell at the
row specified by \code{path} and the column specified by \code{column}.  If \code{path} is
\code{NULL}, or points to a node not found in the tree, the \code{y} and \code{height} fields of
the rectangle will be filled with 0. If \code{column} is \code{NULL}, the \code{x} and \code{width}
fields will be filled with 0.  The returned rectangle is equivalent to the
\code{background.area} passed to \code{\link{gtkCellRendererRender}}.  These background
areas tile to cover the entire bin window.  Contrast with the \code{cell.area},
returned by \code{\link{gtkTreeViewGetCellArea}}, which returns only the cell
itself, excluding surrounding borders and the tree expander area.}
\usage{gtkTreeViewGetBackgroundArea(object, path, column)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{path}}{a \code{\link{GtkTreePath}} for the row, or \code{NULL} to get only horizontal coordinates. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{column}}{a \code{\link{GtkTreeViewColumn}} for the column, or \code{NULL} to get only vertical coordiantes. \emph{[  \acronym{allow-none}  ]}}
}
\value{
A list containing the following elements:
\item{\verb{rect}}{rectangle to fill with cell background rect}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
