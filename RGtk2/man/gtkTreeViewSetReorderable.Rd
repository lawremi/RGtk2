\alias{gtkTreeViewSetReorderable}
\name{gtkTreeViewSetReorderable}
\title{gtkTreeViewSetReorderable}
\description{This function is a convenience function to allow you to reorder models that
support the \code{GtkDragSourceIface} and the \code{GtkDragDestIface}.  Both
\code{\link{GtkTreeStore}} and \code{\link{GtkListStore}} support these.  If \code{reorderable} is \code{TRUE}, then
the user can reorder the model by dragging and dropping rows.  The
developer can listen to these changes by connecting to the model's
row_inserted and row_deleted signals.}
\usage{gtkTreeViewSetReorderable(object, reorderable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}.}
\item{\code{reorderable}}{[logical]  \code{TRUE}, if the tree can be reordered.}
}
\details{This function does not give you any degree of control over the order -- any
reordering is allowed.  If more control is needed, you should probably
handle drag and drop manually.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
