\alias{gtkTreeStoreIterDepth}
\name{gtkTreeStoreIterDepth}
\title{gtkTreeStoreIterDepth}
\description{Returns the depth of \code{iter}.  This will be 0 for anything on the root level, 1
for anything down a level, etc.}
\usage{gtkTreeStoreIterDepth(object, iter)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeStore}}]  A \verb{\link{GtkTreeStore}}}
\item{\verb{iter}}{[\verb{\link{GtkTreeIter}}]  A valid \verb{\link{GtkTreeIter}}}
}
\value{[integer]  The depth of \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
