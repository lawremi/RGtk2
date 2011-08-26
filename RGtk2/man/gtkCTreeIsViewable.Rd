\alias{gtkCTreeIsViewable}
\name{gtkCTreeIsViewable}
\title{gtkCTreeIsViewable}
\description{
This function checks whether the given node is viewable i.e. so that
all of its parent nodes are expanded.  This is different from being
actually visible: the node can be viewable but outside the scrolling
area of the window.
\strong{WARNING: \code{gtk_ctree_is_viewable} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeIsViewable(object, node)}
\arguments{
\item{\verb{object}}{Whether the node is viewable.}
\item{\verb{node}}{\emph{undocumented
}}
}
\value{[logical] Whether the node is viewable.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
