\alias{gtkDragCheckThreshold}
\name{gtkDragCheckThreshold}
\title{gtkDragCheckThreshold}
\description{Checks to see if a mouse drag starting at (\code{start.x}, \code{start.y}) and ending
at (\code{current.x}, \code{current.y}) has passed the GTK+ drag threshold, and thus
should trigger the beginning of a drag-and-drop operation.}
\usage{gtkDragCheckThreshold(object, start.x, start.y, current.x, current.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{start.x}}{[integer]  X coordinate of start of drag}
\item{\code{start.y}}{[integer]  Y coordinate of start of drag}
\item{\code{current.x}}{[integer]  current X coordinate}
\item{\code{current.y}}{[integer]  current Y coordinate}
}
\value{[logical]  \code{TRUE} if the drag threshold has been passed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
