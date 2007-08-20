\alias{gtkTreeViewGetDestRowAtPos}
\name{gtkTreeViewGetDestRowAtPos}
\title{gtkTreeViewGetDestRowAtPos}
\description{Determines the destination row for a given position.  \code{drag.x} and
\code{drag.y} are expected to be in widget coordinates.}
\usage{gtkTreeViewGetDestRowAtPos(object, drag.x, drag.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{drag.x}}{[integer]  the position to determine the destination row for}
\item{\code{drag.y}}{[integer]  the position to determine the destination row for}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  whether there is a row at the given position.}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  Return location for the path of the highlighted row, or \code{NULL}.}
\item{\code{pos}}{[\code{\link{GtkTreeViewDropPosition}}]  Return location for the drop position, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
