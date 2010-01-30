\alias{gtkTreeViewConvertTreeToBinWindowCoords}
\name{gtkTreeViewConvertTreeToBinWindowCoords}
\title{gtkTreeViewConvertTreeToBinWindowCoords}
\description{Converts tree coordinates (coordinates in full scrollable area of the tree)
to bin_window coordinates.}
\usage{gtkTreeViewConvertTreeToBinWindowCoords(object, tx, ty)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeView}}]  a \verb{\link{GtkTreeView}}}
\item{\verb{tx}}{[integer]  tree X coordinate}
\item{\verb{ty}}{[integer]  tree Y coordinate}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{\verb{bx}}{[integer]  return location for X coordinate relative to bin_window}
\item{\verb{by}}{[integer]  return location for Y coordinate relative to bin_window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
