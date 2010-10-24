\alias{gtkDragCheckThreshold}
\name{gtkDragCheckThreshold}
\title{gtkDragCheckThreshold}
\description{Checks to see if a mouse drag starting at (\code{start.x}, \code{start.y}) and ending
at (\code{current.x}, \code{current.y}) has passed the GTK+ drag threshold, and thus
should trigger the beginning of a drag-and-drop operation.}
\usage{gtkDragCheckThreshold(object, start.x, start.y, current.x, current.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{start.x}}{X coordinate of start of drag}
\item{\verb{start.y}}{Y coordinate of start of drag}
\item{\verb{current.x}}{current X coordinate}
\item{\verb{current.y}}{current Y coordinate}
}
\value{[logical] \code{TRUE} if the drag threshold has been passed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
