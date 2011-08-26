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
\usage{gtkTreeStoreInsert(object, parent = NULL, position)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}}
\item{\verb{parent}}{A valid \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{position}}{position to insert the new row}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{An unset \code{\link{GtkTreeIter}} to set to the new row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
