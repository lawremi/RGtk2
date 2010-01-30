\alias{gtkListStoreInsertAfter}
\name{gtkListStoreInsertAfter}
\title{gtkListStoreInsertAfter}
\description{Inserts a new row after \code{sibling}. If \code{sibling} is \code{NULL}, then the row will be
prepended to the beginning of the list. \code{iter} will be changed to point to
this new row. The row will be empty after this function is called. To fill
in values, you need to call \code{\link{gtkListStoreSet}} or \code{\link{gtkListStoreSetValue}}.}
\usage{gtkListStoreInsertAfter(object, sibling)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkListStore}}]  A \verb{\link{GtkListStore}}}
\item{\verb{sibling}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}, or \code{NULL}}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  An unset \verb{\link{GtkTreeIter}} to set to the new row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
