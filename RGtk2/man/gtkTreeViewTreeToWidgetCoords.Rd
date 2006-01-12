\alias{gtkTreeViewTreeToWidgetCoords}
\name{gtkTreeViewTreeToWidgetCoords}
\title{gtkTreeViewTreeToWidgetCoords}
\description{Converts tree coordinates (coordinates in full scrollable area of the tree)
to widget coordinates.}
\usage{gtkTreeViewTreeToWidgetCoords(object, tx, ty)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{tx}}{[integer]  tree X coordinate}
\item{\code{ty}}{[integer]  tree Y coordinate}
}
\value{
A list containing the following elements:
\item{\code{wx}}{[integer]  return location for widget X coordinate}
\item{\code{wy}}{[integer]  return location for widget Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
