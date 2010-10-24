\alias{gtkTreeViewConvertBinWindowToTreeCoords}
\name{gtkTreeViewConvertBinWindowToTreeCoords}
\title{gtkTreeViewConvertBinWindowToTreeCoords}
\description{Converts bin_window coordinates to coordinates for the
tree (the full scrollable area of the tree).}
\usage{gtkTreeViewConvertBinWindowToTreeCoords(object, bx, by)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTreeView}}}
\item{\verb{bx}}{X coordinate relative to bin_window}
\item{\verb{by}}{Y coordinate relative to bin_window}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{\verb{tx}}{return location for tree X coordinate}
\item{\verb{ty}}{return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
