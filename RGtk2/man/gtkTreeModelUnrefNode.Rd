\alias{gtkTreeModelUnrefNode}
\name{gtkTreeModelUnrefNode}
\title{gtkTreeModelUnrefNode}
\description{Lets the tree unref the node.  This is an optional method for models to
implement.  To be more specific, models may ignore this call as it exists
primarily for performance reasons.}
\usage{gtkTreeModelUnrefNode(object, iter)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModel}}.}
\item{\verb{iter}}{The \code{\link{GtkTreeIter}}.}
}
\details{For more information on what this means, see \code{\link{gtkTreeModelRefNode}}.
Please note that nodes that are deleted are not unreffed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
