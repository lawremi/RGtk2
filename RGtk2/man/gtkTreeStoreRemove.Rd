\alias{gtkTreeStoreRemove}
\name{gtkTreeStoreRemove}
\title{gtkTreeStoreRemove}
\description{Removes \code{iter} from \code{tree.store}.  After being removed, \code{iter} is set to the
next valid row at that level, or invalidated if it previously pointed to the
last one.}
\usage{gtkTreeStoreRemove(object, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}}
}
\value{[logical] \code{TRUE} if \code{iter} is still valid, \code{FALSE} if not.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
