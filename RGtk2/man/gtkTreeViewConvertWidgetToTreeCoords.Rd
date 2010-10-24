\alias{gtkTreeViewConvertWidgetToTreeCoords}
\name{gtkTreeViewConvertWidgetToTreeCoords}
\title{gtkTreeViewConvertWidgetToTreeCoords}
\description{Converts widget coordinates to coordinates for the
tree (the full scrollable area of the tree).}
\usage{gtkTreeViewConvertWidgetToTreeCoords(object, wx, wy)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{wx}}{X coordinate relative to the widget}
\item{\verb{wy}}{Y coordinate relative to the widget}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{\verb{tx}}{return location for tree X coordinate}
\item{\verb{ty}}{return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
