\alias{gtkTreeModelIterNext}
\name{gtkTreeModelIterNext}
\title{gtkTreeModelIterNext}
\description{Sets \code{iter} to point to the node following it at the current level.  If there
is no next \code{iter}, \code{FALSE} is returned and \code{iter} is set to be invalid.}
\usage{gtkTreeModelIterNext(object, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The \verb{\link{GtkTreeIter}}.}
}
\value{[logical] \code{TRUE} if \code{iter} has been changed to the next node.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
