\alias{gtkTreeModelIterNChildren}
\name{gtkTreeModelIterNChildren}
\title{gtkTreeModelIterNChildren}
\description{Returns the number of children that \code{iter} has.  As a special case, if \code{iter}
is \code{NULL}, then the number of toplevel nodes is returned.}
\usage{gtkTreeModelIterNChildren(object, iter = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModel}}]  A \code{\link{GtkTreeModel}}.}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}]  The \code{\link{GtkTreeIter}}, or \code{NULL}.}
}
\value{[integer]  The number of children of \code{iter}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
