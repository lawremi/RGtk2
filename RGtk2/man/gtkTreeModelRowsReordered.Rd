\alias{gtkTreeModelRowsReordered}
\name{gtkTreeModelRowsReordered}
\title{gtkTreeModelRowsReordered}
\description{Emits the "rows-reordered" signal on \code{tree.model}.  This should be called by
models when their rows have been reordered.}
\usage{gtkTreeModelRowsReordered(object, path, iter, new.order)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}}
\item{\verb{path}}{A \code{\link{GtkTreePath}} pointing to the tree node whose children have been
reordered}
\item{\verb{iter}}{A valid \code{\link{GtkTreeIter}} pointing to the node whose children have been
reordered, or \code{NULL} if the depth of \code{path} is 0.}
\item{\verb{new.order}}{a list of integers mapping the current position of each child
to its old position before the re-ordering,
i.e. \code{new.order}\code{[newpos] = oldpos}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
