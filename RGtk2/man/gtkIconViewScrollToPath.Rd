\alias{gtkIconViewScrollToPath}
\name{gtkIconViewScrollToPath}
\title{gtkIconViewScrollToPath}
\description{Moves the alignments of \code{icon.view} to the position specified by \code{path}.  
\code{row.align} determines where the row is placed, and \code{col.align} determines 
where \code{column} is placed.  Both are expected to be between 0.0 and 1.0. 
0.0 means left/top alignment, 1.0 means right/bottom alignment, 0.5 means 
center.}
\usage{gtkIconViewScrollToPath(object, path, use.align, row.align, col.align)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkIconView}}.}
\item{\verb{path}}{The path of the item to move to.}
\item{\verb{use.align}}{whether to use alignment arguments, or \code{FALSE}.}
\item{\verb{row.align}}{The vertical alignment of the item specified by \code{path}.}
\item{\verb{col.align}}{The horizontal alignment of the item specified by \code{path}.}
}
\details{If \code{use.align} is \code{FALSE}, then the alignment arguments are ignored, and the
tree does the minimum amount of work to scroll the item onto the screen.
This means that the item will be scrolled to the edge closest to its current
position.  If the item is currently visible on the screen, nothing is done.
  
This function only works if the model is set, and \code{path} is a valid row on 
the model. If the model changes before the \code{icon.view} is realized, the 
centered path will be modified to reflect this change.
  Since 2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
