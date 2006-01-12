\alias{gtkIconViewGetPathAtPos}
\name{gtkIconViewGetPathAtPos}
\title{gtkIconViewGetPathAtPos}
\description{Finds the path at the point (\code{x}, \code{y}), relative to widget coordinates.
See \code{\link{gtkIconViewGetItemAtPos}}, if you are also interested in
the cell at the specified position.}
\usage{gtkIconViewGetPathAtPos(object, x, y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}.}
\item{\code{x}}{[integer]  The x position to be identified}
\item{\code{y}}{[integer]  The y position to be identified}
}
\details{  Since  2.6 }
\value{[\code{\link{GtkTreePath}}]  The \code{\link{GtkTreePath}} corresponding to the icon or \code{NULL}
if no icon exists at that position.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
