\alias{gtkTreeViewColumnCellGetSize}
\name{gtkTreeViewColumnCellGetSize}
\title{gtkTreeViewColumnCellGetSize}
\description{Obtains the width and height needed to render the column.  This is used
primarily by the \code{\link{GtkTreeView}}.}
\usage{gtkTreeViewColumnCellGetSize(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}.}}
\value{
A list containing the following elements:
\item{\verb{cell.area}}{The area a cell in the column will be allocated, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{x.offset}}{location to return x offset of a cell relative to \code{cell.area}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{y.offset}}{location to return y offset of a cell relative to \code{cell.area}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{width}}{location to return width needed to render a cell, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{height}}{location to return height needed to render a cell, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
