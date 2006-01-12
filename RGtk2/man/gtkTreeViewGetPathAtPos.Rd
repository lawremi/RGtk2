\alias{gtkTreeViewGetPathAtPos}
\name{gtkTreeViewGetPathAtPos}
\title{gtkTreeViewGetPathAtPos}
\description{Finds the path at the point (\code{x}, \code{y}), relative to widget coordinates.  That
is, \code{x} and \code{y} are relative to an events coordinates. \code{x} and \code{y} must come
from an event on the \code{tree.view} only where \code{event->window ==
gtk_tree_view_get_bin (}. It is primarily for things 
like popup menus. If \code{path} is non-\code{NULL}, then it will be filled with the 
\code{\link{GtkTreePath}} at that point.  
If \code{column} is non-\code{NULL}, then it will be filled with the column at that point.
\code{cell.x} and \code{cell.y} return the coordinates relative to the cell background
(i.e. the \code{background.area} passed to \code{\link{gtkCellRendererRender}}).  This
function is only meaningful if \code{tree.view} is realized.}
\usage{gtkTreeViewGetPathAtPos(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  A \code{\link{GtkTreeView}}.}
\item{\code{x}}{[integer]  The x position to be identified.}
\item{\code{y}}{[integer]  The y position to be identified.}
}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if a row exists at that coordinate.}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  A pointer to a \code{\link{GtkTreePath}} pointer to be filled in, or \code{NULL}}
\item{\code{column}}{[\code{\link{GtkTreeViewColumn}}]  A pointer to a \code{\link{GtkTreeViewColumn}} pointer to be filled in, or \code{NULL}}
\item{\code{cell.x}}{[integer]  A pointer where the X coordinate relative to the cell can be placed, or \code{NULL}}
\item{\code{cell.y}}{[integer]  A pointer where the Y coordinate relative to the cell can be placed, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
