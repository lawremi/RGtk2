\alias{gtkTreeModelGetIterFirst}
\name{gtkTreeModelGetIterFirst}
\title{gtkTreeModelGetIterFirst}
\description{Initializes \code{iter} with the first iterator in the tree (the one at the path
"0") and returns \code{TRUE}.  Returns \code{FALSE} if the tree is empty.}
\usage{gtkTreeModelGetIterFirst(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{iter} was set.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The uninitialized \verb{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
