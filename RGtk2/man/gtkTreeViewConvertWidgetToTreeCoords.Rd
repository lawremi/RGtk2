\alias{gtkTreeViewConvertWidgetToTreeCoords}
\name{gtkTreeViewConvertWidgetToTreeCoords}
\title{gtkTreeViewConvertWidgetToTreeCoords}
\description{Converts widget coordinates to coordinates for the
tree (the full scrollable area of the tree).}
\usage{gtkTreeViewConvertWidgetToTreeCoords(object, wx, wy)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{wx}}{[integer]  X coordinate relative to the widget}
\item{\code{wy}}{[integer]  Y coordinate relative to the widget}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\code{tx}}{[integer]  return location for tree X coordinate}
\item{\code{ty}}{[integer]  return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
