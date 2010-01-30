\alias{gtkCTreeFind}
\name{gtkCTreeFind}
\title{gtkCTreeFind}
\description{

\strong{WARNING: \code{gtk_ctree_find} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeFind(object, node, child)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] The node to start searching from. May be \code{NULL}.}
\item{\verb{child}}{[\verb{\link{GtkCTreeNode}}] }
}
\value{[logical] True if \code{child} is on some level a child (grandchild...) of the \code{node}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
