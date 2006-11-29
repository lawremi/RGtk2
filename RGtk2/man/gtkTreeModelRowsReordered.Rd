\alias{gtkTreeModelRowsReordered}
\name{gtkTreeModelRowsReordered}
\title{gtkTreeModelRowsReordered}
\description{Emits the "rows\_reordered" signal on \code{tree.model}.  This should be called by
models when their rows have been reordered.}
\usage{gtkTreeModelRowsReordered(object, path, iter, new.order)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  A \code{\link{GtkTreePath}} pointing to the tree node whose children have been 
     reordered}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to the node whose children have been 
     reordered, or \code{NULL} if the depth of \code{path} is 0.}
\item{\code{new.order}}{[integer]  a list of integers mapping the current position of each child
     to its old position before the re-ordering,
     i.e. \code{new.order}\code{[newpos] = oldpos}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
