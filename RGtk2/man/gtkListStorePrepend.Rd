\alias{gtkListStorePrepend}
\name{gtkListStorePrepend}
\title{gtkListStorePrepend}
\description{Prepends a new row to \code{list.store}. \code{iter} will be changed to point to this new
row. The row will be empty after this function is called. To fill in
values, you need to call \code{\link{gtkListStoreSet}} or \code{\link{gtkListStoreSetValue}}.}
\usage{gtkListStorePrepend(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{iter}}{An unset \code{\link{GtkTreeIter}} to set to the prepend row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
