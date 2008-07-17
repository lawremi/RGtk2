\alias{gtkTreeModelGetIterFirst}
\name{gtkTreeModelGetIterFirst}
\title{gtkTreeModelGetIterFirst}
\description{Initializes \code{iter} with the first iterator in the tree (the one at the path
"0") and returns \code{TRUE}.  Returns \code{FALSE} if the tree is empty.}
\usage{gtkTreeModelGetIterFirst(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{iter} was set.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
