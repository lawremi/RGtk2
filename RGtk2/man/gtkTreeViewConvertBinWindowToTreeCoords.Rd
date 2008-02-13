\alias{gtkTreeViewConvertBinWindowToTreeCoords}
\name{gtkTreeViewConvertBinWindowToTreeCoords}
\title{gtkTreeViewConvertBinWindowToTreeCoords}
\description{Converts bin\_window coordinates to coordinates for the
tree (the full scrollable area of the tree).}
\usage{gtkTreeViewConvertBinWindowToTreeCoords(object, bx, by)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{bx}}{[integer]  X coordinate relative to bin\_window}
\item{\code{by}}{[integer]  Y coordinate relative to bin\_window}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\code{tx}}{[integer]  return location for tree X coordinate}
\item{\code{ty}}{[integer]  return location for tree Y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
