\alias{gtkListStoreAppend}
\name{gtkListStoreAppend}
\title{gtkListStoreAppend}
\description{Appends a new row to \code{list.store}.  \code{iter} will be changed to point to this new
row.  The row will be empty after this function is called.  To fill in
values, you need to call \code{\link{gtkListStoreSet}} or \code{\link{gtkListStoreSetValue}}.}
\usage{gtkListStoreAppend(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkListStore}}]  A \code{\link{GtkListStore}}}}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  An unset \code{\link{GtkTreeIter}} to set to the appended row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
