\alias{gtkIconViewGetItemAtPos}
\name{gtkIconViewGetItemAtPos}
\title{gtkIconViewGetItemAtPos}
\description{Finds the path at the point (\code{x}, \code{y}), relative to bin_window coordinates.
In contrast to \code{\link{gtkIconViewGetPathAtPos}}, this function also 
obtains the cell at the specified position.
See \code{\link{gtkIconViewConvertWidgetToBinWindowCoords}} for converting
widget coordinates to bin_window coordinates.}
\usage{gtkIconViewGetItemAtPos(object, x, y)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkIconView}}.}
\item{\verb{x}}{The x position to be identified}
\item{\verb{y}}{The y position to be identified}
}
\details{Since 2.8}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if an item exists at the specified position}
\item{\verb{path}}{Return location for the path, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{cell}}{Return location for the renderer responsible for the cell
at (\code{x}, \code{y}), or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
