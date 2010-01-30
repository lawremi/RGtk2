\alias{gtkTreeModelGetIter}
\name{gtkTreeModelGetIter}
\title{gtkTreeModelGetIter}
\description{Sets \code{iter} to a valid iterator pointing to \code{path}.}
\usage{gtkTreeModelGetIter(object, path)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}.}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  The \verb{\link{GtkTreePath}}.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{iter} was set.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The uninitialized \verb{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
