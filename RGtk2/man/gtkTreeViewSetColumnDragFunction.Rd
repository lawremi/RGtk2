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
\item{\verb{object}}{A \code{\link{GtkTreeView}}.}
\item{\verb{func}}{A function to determine which columns are reorderable, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{user.data}}{User data to be passed to \code{func}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
