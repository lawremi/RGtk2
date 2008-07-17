\alias{gtkIconViewGetItemAtPos}
\name{gtkIconViewGetItemAtPos}
\title{gtkIconViewGetItemAtPos}
\description{Finds the path at the point (\code{x}, \code{y}), relative to bin\_window coordinates.
In contrast to \code{\link{gtkIconViewGetPathAtPos}}, this function also 
obtains the cell at the specified position.
See \code{\link{gtkIconViewConvertWidgetToBinWindowCoords}} for converting
widget coordinates to bin\_window coordinates.}
\usage{gtkIconViewGetItemAtPos(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}.}
\item{\code{x}}{[integer]  The x position to be identified}
\item{\code{y}}{[integer]  The y position to be identified}
}
\details{  Since  2.8}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if an item exists at the specified position}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  Return location for the path, or \code{NULL}}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  Return location for the renderer responsible for the cell
  at (\code{x}, \code{y}), or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
