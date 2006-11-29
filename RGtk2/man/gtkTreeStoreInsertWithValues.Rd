\alias{gtkTreeStoreInsertWithValues}
\name{gtkTreeStoreInsertWithValues}
\title{gtkTreeStoreInsertWithValues}
\description{Creates a new row at \code{position}.  \code{iter} will be changed to point to this
new row.  If \code{position} is larger than the number of rows on the list, then
the new row will be appended to the list.  The row will be filled with
the values given to this function.}
\usage{gtkTreeStoreInsertWithValues(object, parent, position, ...)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeStore}}]  A \code{\link{GtkTreeStore}}}
\item{\code{parent}}{[\code{\link{GtkTreeIter}}]  A valid \code{\link{GtkTreeIter}}, or \code{NULL}}
\item{\code{position}}{[integer]  position to insert the new row}
\item{\code{...}}{ pairs of column number and value, terminated with -1}
}
\details{Calling
\code{gtk_tree_store_insert_with_values (tree_store, iter, position, ...)}
has the same effect as calling
\preformatted{gtk_tree_store_insert (tree_store, iter, position);
gtk_tree_store_set (tree_store, iter, ...);
}
with the different that the former will only emit a row\_inserted signal,
while the latter will emit row\_inserted, row\_changed and if the tree store
is sorted, rows\_reordered.  Since emitting the rows\_reordered signal
repeatedly can affect the performance of the program,
\code{\link{gtkTreeStoreInsertWithValues}} should generally be preferred when
inserting rows in a sorted tree store.  

  Since  2.10}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  An unset \code{\link{GtkTreeIter}} to set the new row, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
