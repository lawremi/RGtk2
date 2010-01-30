\alias{gtkTreeViewTreeToWidgetCoords}
\name{gtkTreeViewTreeToWidgetCoords}
\title{gtkTreeViewTreeToWidgetCoords}
\description{
Converts tree coordinates (coordinates in full scrollable area of the tree)
to bin_window coordinates.
\strong{WARNING: \code{gtk_tree_view_tree_to_widget_coords} has been deprecated since version 2.12 and should not be used in newly-written code. Due to historial reasons the name of this function is
incorrect.  For converting bin_window coordinates to coordinates relative
to bin_window, please see
\code{\link{gtkTreeViewConvertBinWindowToWidgetCoords}}.}
}
\usage{gtkTreeViewTreeToWidgetCoords(object, tx, ty)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{tx}}{[integer]  tree X coordinate}
\item{\verb{ty}}{[integer]  tree Y coordinate}
}
\value{
A list containing the following elements:
\item{\verb{wx}}{[integer]  return location for X coordinate relative to bin_window}
\item{\verb{wy}}{[integer]  return location for Y coordinate relative to bin_window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
