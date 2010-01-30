\alias{gtkTreeViewConvertWidgetToTreeCoords}
\name{gtkTreeViewConvertWidgetToTreeCoords}
\title{gtkTreeViewConvertWidgetToTreeCoords}
\description{Converts widget coordinates to coordinates for the
tree (the full scrollable area of the tree).}
\usage{gtkTreeViewConvertWidgetToTreeCoords(object, wx, wy)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{wx}}{[integer]  X coordinate relative to the widget}
\item{\verb{wy}}{[integer]  Y coordinate relative to the widget}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\verb{tx}}{[integer]  return location for tree X coordinate}
\item{\verb{ty}}{[integer]  return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
