\alias{gtkTreeViewWidgetToTreeCoords}
\name{gtkTreeViewWidgetToTreeCoords}
\title{gtkTreeViewWidgetToTreeCoords}
\description{Converts widget coordinates to coordinates for the
tree window (the full scrollable area of the tree).}
\usage{gtkTreeViewWidgetToTreeCoords(object, wx, wy)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{wx}}{[integer]  widget X coordinate}
\item{\code{wy}}{[integer]  widget Y coordinate}
}
\value{
A list containing the following elements:
\item{\code{tx}}{[integer]  return location for tree X coordinate}
\item{\code{ty}}{[integer]  return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
