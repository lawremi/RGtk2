\alias{gtkTreeModelIterChildren}
\name{gtkTreeModelIterChildren}
\title{gtkTreeModelIterChildren}
\description{Sets \code{iter} to point to the first child of \code{parent}.  If \code{parent} has no 
children, \code{FALSE} is returned and \code{iter} is set to be invalid.  \code{parent} 
will remain a valid node after this function has been called.}
\usage{gtkTreeModelIterChildren(object, parent = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}
\item{\code{parent}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}}, or \code{NULL}}
}
\details{If \code{parent} is \code{NULL} returns the first node, equivalent to
\code{gtk_tree_model_get_iter_first (tree_model, iter);}  }
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{child} has been set to the first child.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The new \code{\link{GtkTreeIter}} to be set to the child.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
