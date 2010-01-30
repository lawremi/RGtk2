\alias{gtkTreeViewGetPathAtPos}
\name{gtkTreeViewGetPathAtPos}
\title{gtkTreeViewGetPathAtPos}
\description{Finds the path at the point (\code{x}, \code{y}), relative to bin_window coordinates
(please see \code{\link{gtkTreeViewGetBinWindow}}).
That is, \code{x} and \code{y} are relative to an events coordinates. \code{x} and \code{y} must
come from an event on the \code{tree.view} only where \code{event->window ==
gtk_tree_view_get_bin_window (}. It is primarily for
things like popup menus. If \code{path} is non-\code{NULL}, then it will be filled
with the \verb{\link{GtkTreePath}} at that point.  If \code{column} is non-\code{NULL}, then it will be filled
with the column at that point.  \code{cell.x} and \code{cell.y} return the coordinates
relative to the cell background (i.e. the \code{background.area} passed to
\code{\link{gtkCellRendererRender}}).  This function is only meaningful if
\code{tree.view} is realized.}
\usage{gtkTreeViewGetPathAtPos(object, x, y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  A \verb{\link{GtkTreeView}}.}
\item{\verb{x}}{[integer]  The x position to be identified (relative to bin_window).}
\item{\verb{y}}{[integer]  The y position to be identified (relative to bin_window).}
}
\details{For converting widget coordinates (eg. the ones you get from
GtkWidget::query-tooltip), please see
\code{\link{gtkTreeViewConvertWidgetToBinWindowCoords}}.  }
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if a row exists at that coordinate.}
\item{\verb{path}}{[\verb{\link{GtkTreePath}}]  A pointer to a \verb{\link{GtkTreePath}} pointer to be filled in, or \code{NULL}}
\item{\verb{column}}{[\verb{\link{GtkTreeViewColumn}}]  A pointer to a \verb{\link{GtkTreeViewColumn}} pointer to be filled in, or \code{NULL}}
\item{\verb{cell.x}}{[integer]  A pointer where the X coordinate relative to the cell can be placed, or \code{NULL}}
\item{\verb{cell.y}}{[integer]  A pointer where the Y coordinate relative to the cell can be placed, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
