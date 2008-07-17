\alias{gtkIconViewSetReorderable}
\name{gtkIconViewSetReorderable}
\title{gtkIconViewSetReorderable}
\description{This function is a convenience function to allow you to reorder models that
support the \code{GtkTreeDragSourceIface} and the \code{GtkTreeDragDestIface}.  Both
\code{\link{GtkTreeStore}} and \code{\link{GtkListStore}} support these.  If \code{reorderable} is \code{TRUE}, then
the user can reorder the model by dragging and dropping rows.  The
developer can listen to these changes by connecting to the model's
row\_inserted and row\_deleted signals.}
\usage{gtkIconViewSetReorderable(object, reorderable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}.}
\item{\code{reorderable}}{[logical] \code{TRUE}, if the list of items can be reordered.}
}
\details{This function does not give you any degree of control over the order -- any
reordering is allowed.  If more control is needed, you should probably
handle drag and drop manually.  

  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
