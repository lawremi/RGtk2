\alias{gtkTreeStoreInsertAfter}
\name{gtkTreeStoreInsertAfter}
\title{gtkTreeStoreInsertAfter}
\description{Inserts a new row after \code{sibling}.  If \code{sibling} is \code{NULL}, then the row will be
prepended to \code{parent} 's children.  If \code{parent} and \code{sibling} are \code{NULL}, then
the row will be prepended to the toplevel.  If both \code{sibling} and \code{parent} are
set, then \code{parent} must be the parent of \code{sibling}.  When \code{sibling} is set,
\code{parent} is optional.}
\usage{gtkTreeStoreInsertAfter(object, parent, sibling)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{parent}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}, or \code{NULL}}
\item{\verb{sibling}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}, or \code{NULL}}
}
\details{\code{iter} will be changed to point to this new row.  The row will be empty after
this function is called.  To fill in values, you need to call
\code{\link{gtkTreeStoreSet}} or \code{\link{gtkTreeStoreSetValue}}.  }
\value{
A list containing the following elements:
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  An unset \verb{\link{GtkTreeIter}} to set to the new row}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
