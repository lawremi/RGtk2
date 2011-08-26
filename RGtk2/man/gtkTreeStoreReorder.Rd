\alias{gtkTreeStoreReorder}
\name{gtkTreeStoreReorder}
\title{gtkTreeStoreReorder}
\description{Reorders the children of \code{parent} in \code{tree.store} to follow the order
indicated by \code{new.order}. Note that this function only works with
unsorted stores.}
\usage{gtkTreeStoreReorder(object, parent, new.order)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}.}
\item{\verb{parent}}{A \code{\link{GtkTreeIter}}.}
\item{\verb{new.order}}{a list of integers mapping the new position of each child
to its old position before the re-ordering,
i.e. \code{new.order}\code{[newpos] = oldpos}.}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
