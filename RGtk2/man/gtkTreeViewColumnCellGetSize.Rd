\alias{gtkTreeViewColumnCellGetSize}
\name{gtkTreeViewColumnCellGetSize}
\title{gtkTreeViewColumnCellGetSize}
\description{Obtains the width and height needed to render the column.  This is used
primarily by the \verb{\link{GtkTreeView}}.}
\usage{gtkTreeViewColumnCellGetSize(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTreeViewColumn}}]  A \verb{\link{GtkTreeViewColumn}}.}}
\value{
A list containing the following elements:
\item{\verb{cell.area}}{[\verb{\link{GdkRectangle}}]  The area a cell in the column will be allocated, or \code{NULL}}
\item{\verb{x.offset}}{[integer]  location to return x offset of a cell relative to \code{cell.area}, or \code{NULL}}
\item{\verb{y.offset}}{[integer]  location to return y offset of a cell relative to \code{cell.area}, or \code{NULL}}
\item{\verb{width}}{[integer]  location to return width needed to render a cell, or \code{NULL}}
\item{\verb{height}}{[integer]  location to return height needed to render a cell, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
