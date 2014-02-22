\alias{gtkTreeViewScrollToCell}
\name{gtkTreeViewScrollToCell}
\title{gtkTreeViewScrollToCell}
\description{Moves the alignments of \code{tree.view} to the position specified by \code{column} and
\code{path}.  If \code{column} is \code{NULL}, then no horizontal scrolling occurs.  Likewise,
if \code{path} is \code{NULL} no vertical scrolling occurs.  At a minimum, one of \code{column}
or \code{path} need to be non-\code{NULL}.  \code{row.align} determines where the row is
placed, and \code{col.align} determines where \code{column} is placed.  Both are expected
to be between 0.0 and 1.0. 0.0 means left/top alignment, 1.0 means
right/bottom alignment, 0.5 means center.}
\usage{gtkTreeViewScrollToCell(object, path, column = NULL, use.align = FALSE, 
    row.align = 0, col.align = 0)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeView}}.}
\item{\verb{path}}{The path of the row to move to, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{column}}{The \code{\link{GtkTreeViewColumn}} to move horizontally to, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{use.align}}{whether to use alignment arguments, or \code{FALSE}.}
\item{\verb{row.align}}{The vertical alignment of the row specified by \code{path}.}
\item{\verb{col.align}}{The horizontal alignment of the column specified by \code{column}.}
}
\details{If \code{use.align} is \code{FALSE}, then the alignment arguments are ignored, and the
tree does the minimum amount of work to scroll the cell onto the screen.
This means that the cell will be scrolled to the edge closest to its current
position.  If the cell is currently visible on the screen, nothing is done.
  
This function only works if the model is set, and \code{path} is a valid row on the
model.  If the model changes before the \code{tree.view} is realized, the centered
path will be modified to reflect this change.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
