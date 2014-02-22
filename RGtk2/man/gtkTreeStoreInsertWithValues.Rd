\alias{gtkTreeStoreInsertWithValues}
\name{gtkTreeStoreInsertWithValues}
\title{gtkTreeStoreInsertWithValues}
\description{Creates a new row at \code{position}.  \code{iter} will be changed to point to this
new row.  If \code{position} is larger than the number of rows on the list, then
the new row will be appended to the list.  The row will be filled with
the values given to this function.}
\usage{gtkTreeStoreInsertWithValues(object, parent, position, ...)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}}
\item{\verb{parent}}{A valid \code{\link{GtkTreeIter}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{position}}{position to insert the new row}
\item{\verb{...}}{\emph{undocumented
}}
}
\details{Calling
\code{gtk_tree_store_insert_with_values (tree_store, iter, position, ...)}
has the same effect as calling
\preformatted{
tree_store$insert(iter, position)
tree_store$set(iter, ...)
}
with the different that the former will only emit a row_inserted signal,
while the latter will emit row_inserted, row_changed and if the tree store
is sorted, rows_reordered.  Since emitting the rows_reordered signal
repeatedly can affect the performance of the program,
\code{\link{gtkTreeStoreInsertWithValues}} should generally be preferred when
inserting rows in a sorted tree store.
  Since 2.10}
\value{
A list containing the following elements:
\item{\verb{iter}}{An unset \code{\link{GtkTreeIter}} to set the new row, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
