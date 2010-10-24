\alias{gtkTreeViewScrollToPoint}
\name{gtkTreeViewScrollToPoint}
\title{gtkTreeViewScrollToPoint}
\description{Scrolls the tree view such that the top-left corner of the visible
area is \code{tree.x}, \code{tree.y}, where \code{tree.x} and \code{tree.y} are specified
in tree coordinates.  The \code{tree.view} must be realized before
this function is called.  If it isn't, you probably want to be
using \code{\link{gtkTreeViewScrollToCell}}.}
\usage{gtkTreeViewScrollToPoint(object, tree.x, tree.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{tree.x}}{X coordinate of new top-left pixel of visible area, or -1}
\item{\verb{tree.y}}{Y coordinate of new top-left pixel of visible area, or -1}
}
\details{If either \code{tree.x} or \code{tree.y} are -1, then that direction isn't scrolled.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
