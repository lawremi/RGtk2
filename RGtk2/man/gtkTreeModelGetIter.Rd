\alias{gtkTreeModelGetIter}
\name{gtkTreeModelGetIter}
\title{gtkTreeModelGetIter}
\description{Sets \code{iter} to a valid iterator pointing to \code{path}.}
\usage{gtkTreeModelGetIter(object, path)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{path}}{The \code{\link{GtkTreePath}}.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{iter} was set.}
\item{\verb{iter}}{The uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
