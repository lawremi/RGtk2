\alias{gtkTreeModelIterNthChild}
\name{gtkTreeModelIterNthChild}
\title{gtkTreeModelIterNthChild}
\description{Sets \code{iter} to be the child of \code{parent}, using the given index.  The first
index is 0.  If \code{n} is too big, or \code{parent} has no children, \code{iter} is set
to an invalid iterator and \code{FALSE} is returned.  \code{parent} will remain a valid
node after this function has been called.  As a special case, if \code{parent} is
\code{NULL}, then the \code{n}th root node is set.}
\usage{gtkTreeModelIterNthChild(object, parent = NULL, n)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}
\item{\code{parent}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}} to get the child from, or \code{NULL}.}
\item{\code{n}}{[integer]  Then index of the desired child.}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE}, if \code{parent} has an \code{n}th child.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}} to set to the nth child.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
