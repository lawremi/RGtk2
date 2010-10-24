\alias{gtkListStoreRemove}
\name{gtkListStoreRemove}
\title{gtkListStoreRemove}
\description{Removes the given row from the list store.  After being removed, 
\code{iter} is set to be the next valid row, or invalidated if it pointed 
to the last row in \code{list.store}.}
\usage{gtkListStoreRemove(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkListStore}}}
\item{\verb{iter}}{A valid \code{\link{GtkTreeIter}}}
}
\value{[logical] \code{TRUE} if \code{iter} is valid, \code{FALSE} if not.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
