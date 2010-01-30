\alias{gtkTreeModelRowHasChildToggled}
\name{gtkTreeModelRowHasChildToggled}
\title{gtkTreeModelRowHasChildToggled}
\description{Emits the "row_has_child_toggled" signal on \code{tree.model}.  This should be
called by models after the child state of a node changes.}
\usage{gtkTreeModelRowHasChildToggled(object, path, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  A \verb{\link{GtkTreePath}} pointing to the changed row}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}} pointing to the changed row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
