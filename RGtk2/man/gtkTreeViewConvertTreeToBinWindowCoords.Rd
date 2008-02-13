\alias{gtkTreeViewConvertTreeToBinWindowCoords}
\name{gtkTreeViewConvertTreeToBinWindowCoords}
\title{gtkTreeViewConvertTreeToBinWindowCoords}
\description{Converts tree coordinates (coordinates in full scrollable area of the tree)
to bin\_window coordinates.}
\usage{gtkTreeViewConvertTreeToBinWindowCoords(object, tx, ty)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeView}}]  a \code{\link{GtkTreeView}}}
\item{\code{tx}}{[integer]  tree X coordinate}
\item{\code{ty}}{[integer]  tree Y coordinate}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\code{bx}}{[integer]  return location for X coordinate relative to bin\_window}
\item{\code{by}}{[integer]  return location for Y coordinate relative to bin\_window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
