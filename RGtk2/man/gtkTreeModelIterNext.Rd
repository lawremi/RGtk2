\alias{gtkTreeModelIterNext}
\name{gtkTreeModelIterNext}
\title{gtkTreeModelIterNext}
\description{Sets \code{iter} to point to the node following it at the current level.  If there
is no next \code{iter}, \code{FALSE} is returned and \code{iter} is set to be invalid.}
\usage{gtkTreeModelIterNext(object, iter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}}.}
}
\value{[logical] \code{TRUE} if \code{iter} has been changed to the next node.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
