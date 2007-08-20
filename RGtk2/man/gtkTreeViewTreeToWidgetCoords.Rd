\alias{gtkTreeViewTreeToWidgetCoords}
\name{gtkTreeViewTreeToWidgetCoords}
\title{gtkTreeViewTreeToWidgetCoords}
\description{
Converts tree coordinates (coordinates in full scrollable area of the tree)
to bin\_window coordinates.
\strong{WARNING: \code{gtk_tree_view_tree_to_widget_coords} has been deprecated since version 2.12 and should not be used in newly-written code. Due to historial reasons the name of this function is
incorrect.  For converting bin\_window coordinates to coordinates relative
to bin\_window, please see
\code{\link{gtkTreeViewConvertBinWindowToWidgetCoords}}.}
}
\usage{gtkTreeViewTreeToWidgetCoords(object, tx, ty)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{tx}}{[integer]  tree X coordinate}
\item{\code{ty}}{[integer]  tree Y coordinate}
}
\value{
A list containing the following elements:
\item{\code{wx}}{[integer]  return location for X coordinate relative to bin\_window}
\item{\code{wy}}{[integer]  return location for Y coordinate relative to bin\_window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
