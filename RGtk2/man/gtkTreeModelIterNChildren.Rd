\alias{gtkTreeModelIterNChildren}
\name{gtkTreeModelIterNChildren}
\title{gtkTreeModelIterNChildren}
\description{Returns the number of children that \code{iter} has.  As a special case, if \code{iter}
is \code{NULL}, then the number of toplevel nodes is returned.}
\usage{gtkTreeModelIterNChildren(object, iter = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeModel}}]  A \verb{\link{GtkTreeModel}}.}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  The \verb{\link{GtkTreeIter}}, or \code{NULL}.}
}
\value{[integer]  The number of children of \code{iter}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
