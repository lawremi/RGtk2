\alias{gtkTreeViewSetColumnDragFunction}
\name{gtkTreeViewSetColumnDragFunction}
\title{gtkTreeViewSetColumnDragFunction}
\description{Sets a user function for determining where a column may be dropped when
dragged.  This function is called on every column pair in turn at the
beginning of a column drag to determine where a drop can take place.  The
arguments passed to \code{func} are: the \code{tree.view}, the \code{\link{GtkTreeViewColumn}} being
dragged, the two \code{\link{GtkTreeViewColumn}} s determining the drop spot, and
\code{user.data}.  If either of the \code{\link{GtkTreeViewColumn}} arguments for the drop spot
are \code{NULL}, then they indicate an edge.  If \code{func} is set to be \code{NULL}, then
\code{tree.view} reverts to the default behavior of allowing all columns to be
dropped everywhere.}
\usage{gtkTreeViewSetColumnDragFunction(object, func, user.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}.}
\item{\code{func}}{[\code{\link{GtkTreeViewColumnDropFunc}}]  A function to determine which columns are reorderable, or \code{NULL}.}
\item{\code{user.data}}{[R object]  User data to be passed to \code{func}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
