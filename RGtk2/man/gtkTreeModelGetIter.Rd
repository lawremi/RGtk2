\alias{gtkTreeModelGetIter}
\name{gtkTreeModelGetIter}
\title{gtkTreeModelGetIter}
\description{Sets \code{iter} to a valid iterator pointing to \code{path}.}
\usage{gtkTreeModelGetIter(object, path)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  The \code{\link{GtkTreePath}}.}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE}, if \code{iter} was set.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
