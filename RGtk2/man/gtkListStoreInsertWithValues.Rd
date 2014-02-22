\alias{gtkListStoreInsertWithValues}
\name{gtkListStoreInsertWithValues}
\title{gtkListStoreInsertWithValues}
\description{Creates a new row at \code{position}.  \code{iter} will be changed to point to this new
row.  If \code{position} is larger than the number of rows on the list, then the
new row will be appended to the list. The row will be filled with the 
values given to this function. }
\usage{gtkListStoreInsertWithValues(object, position, ...)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{position}}{position to insert the new row}
\item{\verb{...}}{\emph{undocumented
}}
}
\details{Calling
\code{gtk_list_store_insert_with_values(list_store, iter, position...)} 
has the same effect as calling 
\preformatted{
list_store$insert(iter, position)
list_store$set(iter, ...)
}
with the difference that the former will only emit a row_inserted signal,
while the latter will emit row_inserted, row_changed and, if the list store
is sorted, rows_reordered. Since emitting the rows_reordered signal
repeatedly can affect the performance of the program, 
\code{\link{gtkListStoreInsertWithValues}} should generally be preferred when
inserting rows in a sorted list store.
  Since 2.6}
\value{
A list containing the following elements:
\item{\verb{iter}}{An unset \code{\link{GtkTreeIter}} to set to the new row, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
