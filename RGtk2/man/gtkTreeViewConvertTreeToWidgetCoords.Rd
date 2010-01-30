\alias{gtkTreeViewConvertTreeToWidgetCoords}
\name{gtkTreeViewConvertTreeToWidgetCoords}
\title{gtkTreeViewConvertTreeToWidgetCoords}
\description{Converts tree coordinates (coordinates in full scrollable area of the tree)
to widget coordinates.}
\usage{gtkTreeViewConvertTreeToWidgetCoords(object, tx, ty)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{tx}}{[integer]  X coordinate relative to the tree}
\item{\verb{ty}}{[integer]  Y coordinate relative to the tree}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\verb{wx}}{[integer]  return location for widget X coordinate}
\item{\verb{wy}}{[integer]  return location for widget Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
