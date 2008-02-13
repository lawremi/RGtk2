\alias{gtkTreeViewConvertTreeToWidgetCoords}
\name{gtkTreeViewConvertTreeToWidgetCoords}
\title{gtkTreeViewConvertTreeToWidgetCoords}
\description{Converts tree coordinates (coordinates in full scrollable area of the tree)
to widget coordinates.}
\usage{gtkTreeViewConvertTreeToWidgetCoords(object, tx, ty)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{tx}}{[integer]  X coordinate relative to the tree}
\item{\code{ty}}{[integer]  Y coordinate relative to the tree}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\code{wx}}{[integer]  return location for widget X coordinate}
\item{\code{wy}}{[integer]  return location for widget Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
