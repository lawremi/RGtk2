\alias{gtkTreeStoreAppend}
\name{gtkTreeStoreAppend}
\title{gtkTreeStoreAppend}
\description{Appends a new row to \code{tree.store}.  If \code{parent} is non-\code{NULL}, then it will append the
new row after the last child of \code{parent}, otherwise it will append a row to
the top level.  \code{iter} will be changed to point to this new row.  The row will
be empty after this function is called.  To fill in values, you need to call
\code{\link{gtkTreeStoreSet}} or \code{\link{gtkTreeStoreSetValue}}.}
\usage{gtkTreeStoreAppend(object, parent = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{parent}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}, or \code{NULL}}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  An unset \verb{\link{GtkTreeIter}} to set to the appended row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
