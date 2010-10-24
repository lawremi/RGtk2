\alias{gtkTreeDragSourceRowDraggable}
\name{gtkTreeDragSourceRowDraggable}
\title{gtkTreeDragSourceRowDraggable}
\description{Asks the \code{\link{GtkTreeDragSource}} whether a particular row can be used as
the source of a DND operation. If the source doesn't implement
this interface, the row is assumed draggable.}
\usage{gtkTreeDragSourceRowDraggable(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeDragSource}}}
\item{\verb{path}}{row on which user is initiating a drag}
}
\value{[logical] \code{TRUE} if the row can be dragged}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
