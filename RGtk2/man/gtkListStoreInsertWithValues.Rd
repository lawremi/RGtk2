\alias{gtkListStoreInsertWithValues}
\name{gtkListStoreInsertWithValues}
\title{gtkListStoreInsertWithValues}
\description{Creates a new row at \code{position}.  \code{iter} will be changed to point to this new
row.  If \code{position} is larger than the number of rows on the list, then the
new row will be appended to the list. The row will be filled with the 
values given to this function. }
\usage{gtkListStoreInsertWithValues(object, position, ...)}
\arguments{\item{\code{...}}{[\code{\link{GtkTreeIter}}]  An unset \code{\link{GtkTreeIter}} to set to the new row, or \code{NULL}.}}
\details{Calling
\code{gtk_list_store_insert_with_values(list_store, iter, position...)} 
has the same effect as calling 
\preformatted{
list_store$insert(iter, position)
list_store$set(iter, ...)
}
with the difference that the former will only emit a row\_inserted signal,
while the latter will emit row\_inserted, row\_changed and, if the list store
is sorted, rows\_reordered. Since emitting the rows\_reordered signal
repeatedly can affect the performance of the program, 
\code{\link{gtkListStoreInsertWithValues}} should generally be preferred when
inserting rows in a sorted list store.  

  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
