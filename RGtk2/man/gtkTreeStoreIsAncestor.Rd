\alias{gtkTreeStoreIsAncestor}
\name{gtkTreeStoreIsAncestor}
\title{gtkTreeStoreIsAncestor}
\description{Returns \code{TRUE} if \code{iter} is an ancestor of \code{descendant}.  That is, \code{iter} is the
parent (or grandparent or great-grandparent) of \code{descendant}.}
\usage{gtkTreeStoreIsAncestor(object, iter, descendant)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}}
\item{\verb{descendant}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}}
}
\value{[logical] \code{TRUE}, if \code{iter} is an ancestor of \code{descendant}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
