\alias{gtkTreeModelRowHasChildToggled}
\name{gtkTreeModelRowHasChildToggled}
\title{gtkTreeModelRowHasChildToggled}
\description{Emits the "row-has-child-toggled" signal on \code{tree.model}.  This should be
called by models after the child state of a node changes.}
\usage{gtkTreeModelRowHasChildToggled(object, path, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}}
\item{\verb{path}}{A \code{\link{GtkTreePath}} pointing to the changed row}
\item{\verb{iter}}{A valid \code{\link{GtkTreeIter}} pointing to the changed row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
