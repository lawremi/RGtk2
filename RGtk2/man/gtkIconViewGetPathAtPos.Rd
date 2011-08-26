\alias{gtkIconViewGetPathAtPos}
\name{gtkIconViewGetPathAtPos}
\title{gtkIconViewGetPathAtPos}
\description{Finds the path at the point (\code{x}, \code{y}), relative to bin_window coordinates.
See \code{\link{gtkIconViewGetItemAtPos}}, if you are also interested in
the cell at the specified position. 
See \code{\link{gtkIconViewConvertWidgetToBinWindowCoords}} for converting
widget coordinates to bin_window coordinates.}
\usage{gtkIconViewGetPathAtPos(object, x, y)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkIconView}}.}
\item{\verb{x}}{The x position to be identified}
\item{\verb{y}}{The y position to be identified}
}
\details{Since 2.6}
\value{[\code{\link{GtkTreePath}}] The \code{\link{GtkTreePath}} corresponding to the icon or \code{NULL}
if no icon exists at that position.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
