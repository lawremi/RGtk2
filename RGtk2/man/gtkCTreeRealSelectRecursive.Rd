\alias{gtkCTreeRealSelectRecursive}
\name{gtkCTreeRealSelectRecursive}
\title{gtkCTreeRealSelectRecursive}
\description{
The function that implements both \code{\link{gtkCTreeSelectRecursive}} and
\code{\link{gtkCTreeUnselectRecursive}}.
\strong{WARNING: \code{gtk_ctree_real_select_recursive} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCTreeRealSelectRecursive(object, node, state)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCTree}}] }
\item{\verb{node}}{[\verb{\link{GtkCTreeNode}}] }
\item{\verb{state}}{[integer] True for selecting, false for unselecting.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
