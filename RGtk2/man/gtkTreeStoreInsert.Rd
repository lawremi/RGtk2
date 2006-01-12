\alias{gtkTreeStoreInsert}
\name{gtkTreeStoreInsert}
\title{gtkTreeStoreInsert}
\description{Creates a new row at \code{position}.  If parent is non-\code{NULL}, then the row will be
made a child of \code{parent}.  Otherwise, the row will be created at the toplevel.
If \code{position} is larger than the number of rows at that level, then the new
row will be inserted to the end of the list.  \code{iter} will be changed to point
to this new row.  The row will be empty after this function is called.  To
fill in values, you need to call \code{\link{gtkTreeStoreSet}} or
\code{\link{gtkTreeStoreSetValue}}.}
\usage{gtkTreeStoreInsert(object, parent, position)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeStore}}]  A \code{\link{GtkTreeStore}}}
\item{\code{parent}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}}, or \code{NULL}}
\item{\code{position}}{[integer]  position to insert the new row}
}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  An unset \code{\link{GtkTreeIter}} to set to the new row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
