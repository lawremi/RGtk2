\alias{gtkTreeModelIterParent}
\name{gtkTreeModelIterParent}
\title{gtkTreeModelIterParent}
\description{Sets \code{iter} to be the parent of \code{child}.  If \code{child} is at the toplevel, and
doesn't have a parent, then \code{iter} is set to an invalid iterator and \code{FALSE}
is returned.  \code{child} will remain a valid node after this function has been
called.}
\usage{gtkTreeModelIterParent(object, child)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}}
\item{\verb{child}}{The \code{\link{GtkTreeIter}}.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{iter} is set to the parent of \code{child}.}
\item{\verb{iter}}{The new \code{\link{GtkTreeIter}} to set to the parent.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
