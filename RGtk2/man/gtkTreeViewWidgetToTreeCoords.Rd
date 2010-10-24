\alias{gtkTreeViewWidgetToTreeCoords}
\name{gtkTreeViewWidgetToTreeCoords}
\title{gtkTreeViewWidgetToTreeCoords}
\description{
Converts bin_window coordinates to coordinates for the
tree (the full scrollable area of the tree).
\strong{WARNING: \code{gtk_tree_view_widget_to_tree_coords} has been deprecated since version 2.12 and should not be used in newly-written code. Due to historial reasons the name of this function is
incorrect.  For converting coordinates relative to the widget to
bin_window coordinates, please see
\code{\link{gtkTreeViewConvertWidgetToBinWindowCoords}}.}
}
\usage{gtkTreeViewWidgetToTreeCoords(object, wx, wy)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{wx}}{X coordinate relative to bin_window}
\item{\verb{wy}}{Y coordinate relative to bin_window}
}
\value{
A list containing the following elements:
\item{\verb{tx}}{return location for tree X coordinate}
\item{\verb{ty}}{return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
