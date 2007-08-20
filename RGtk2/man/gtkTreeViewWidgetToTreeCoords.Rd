\alias{gtkTreeViewWidgetToTreeCoords}
\name{gtkTreeViewWidgetToTreeCoords}
\title{gtkTreeViewWidgetToTreeCoords}
\description{
Converts bin\_window coordinates to coordinates for the
tree (the full scrollable area of the tree).
\strong{WARNING: \code{gtk_tree_view_widget_to_tree_coords} has been deprecated since version 2.12 and should not be used in newly-written code. Due to historial reasons the name of this function is
incorrect.  For converting coordinates relative to the widget to
bin\_window coordinates, please see
\code{\link{gtkTreeViewConvertWidgetToBinWindowCoords}}.}
}
\usage{gtkTreeViewWidgetToTreeCoords(object, wx, wy)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{wx}}{[integer]  X coordinate relative to bin\_window}
\item{\code{wy}}{[integer]  Y coordinate relative to bin\_window}
}
\value{
A list containing the following elements:
\item{\code{tx}}{[integer]  return location for tree X coordinate}
\item{\code{ty}}{[integer]  return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
