\alias{gtkTreeModelRefNode}
\name{gtkTreeModelRefNode}
\title{gtkTreeModelRefNode}
\description{Lets the tree ref the node.  This is an optional method for models to
implement.  To be more specific, models may ignore this call as it exists
primarily for performance reasons.}
\usage{gtkTreeModelRefNode(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{iter}}{The \code{\link{GtkTreeIter}}.}
}
\details{This function is primarily meant as a way for views to let caching model 
know when nodes are being displayed (and hence, whether or not to cache that
node.)  For example, a file-system based model would not want to keep the
entire file-hierarchy in memory, just the sections that are currently being
displayed by every current view.
  
A model should be expected to be able to get an iter independent of its
reffed state.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
