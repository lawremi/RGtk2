\alias{gtkTreeViewConvertTreeToWidgetCoords}
\name{gtkTreeViewConvertTreeToWidgetCoords}
\title{gtkTreeViewConvertTreeToWidgetCoords}
\description{Converts tree coordinates (coordinates in full scrollable area of the tree)
to widget coordinates.}
\usage{gtkTreeViewConvertTreeToWidgetCoords(object, tx, ty)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{tx}}{X coordinate relative to the tree}
\item{\verb{ty}}{Y coordinate relative to the tree}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{\verb{wx}}{return location for widget X coordinate}
\item{\verb{wy}}{return location for widget Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
