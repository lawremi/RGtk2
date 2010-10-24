\alias{gtkTreeStoreIsAncestor}
\name{gtkTreeStoreIsAncestor}
\title{gtkTreeStoreIsAncestor}
\description{Returns \code{TRUE} if \code{iter} is an ancestor of \code{descendant}.  That is, \code{iter} is the
parent (or grandparent or great-grandparent) of \code{descendant}.}
\usage{gtkTreeStoreIsAncestor(object, iter, descendant)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeStore}}}
\item{\verb{iter}}{A valid \code{\link{GtkTreeIter}}}
\item{\verb{descendant}}{A valid \code{\link{GtkTreeIter}}}
}
\value{[logical] \code{TRUE}, if \code{iter} is an ancestor of \code{descendant}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
