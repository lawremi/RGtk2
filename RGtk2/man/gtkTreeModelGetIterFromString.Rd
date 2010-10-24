\alias{gtkTreeModelGetIterFromString}
\name{gtkTreeModelGetIterFromString}
\title{gtkTreeModelGetIterFromString}
\description{Sets \code{iter} to a valid iterator pointing to \code{path.string}, if it
exists. Otherwise, \code{iter} is left invalid and \code{FALSE} is returned.}
\usage{gtkTreeModelGetIterFromString(object, path.string)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{path.string}}{A string representation of a \code{\link{GtkTreePath}}.}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if \code{iter} was set.}
\item{\verb{iter}}{An uninitialized \code{\link{GtkTreeIter}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
