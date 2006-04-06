\alias{gtkTreeModelRowHasChildToggled}
\name{gtkTreeModelRowHasChildToggled}
\title{gtkTreeModelRowHasChildToggled}
\description{Emits the "row\_has\_child\_toggled" signal on \code{tree.model}.  This should be
called by models after the child state of a node changes.}
\usage{gtkTreeModelRowHasChildToggled(object, path, iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  A \code{\link{GtkTreePath}} pointing to the changed row}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}} pointing to the changed row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
