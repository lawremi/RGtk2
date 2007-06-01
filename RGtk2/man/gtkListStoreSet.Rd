\alias{gtkListStoreSet}
\name{gtkListStoreSet}
\title{gtkListStoreSet}
\description{Sets the value of one or more cells in the row referenced by \code{iter}.
The variable argument list should contain integer column numbers,
each column number followed by the value to be set.
The list is terminated by a -1. For example, to set column 0 with type
\code{G_TYPE_STRING} to "Foo", you would write \code{gtk_list_store_set (store, iter,
0, "Foo", -1)}.}
\usage{gtkListStoreSet(object, iter, ...)}
\arguments{\item{\code{...}}{[\code{\link{GtkTreeIter}}]  row iterator}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
