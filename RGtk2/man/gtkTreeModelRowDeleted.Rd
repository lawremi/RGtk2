\alias{gtkTreeModelRowDeleted}
\name{gtkTreeModelRowDeleted}
\title{gtkTreeModelRowDeleted}
\description{Emits the "row-deleted" signal on \code{tree.model}.  This should be called by
models after a row has been removed.  The location pointed to by \code{path} 
should be the location that the row previously was at.  It may not be a 
valid location anymore.}
\usage{gtkTreeModelRowDeleted(object, path)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}}
\item{\verb{path}}{A \code{\link{GtkTreePath}} pointing to the previous location of the deleted row.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
