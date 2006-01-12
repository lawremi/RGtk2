\alias{gtkDragSetIconStock}
\name{gtkDragSetIconStock}
\title{gtkDragSetIconStock}
\description{Sets the icon for a given drag from a stock ID.}
\usage{gtkDragSetIconStock(object, stock.id, hot.x, hot.y)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDragContext}}]  the context for a drag. (This must be called 
           with a  context for the source side of a drag)}
\item{\code{stock.id}}{[character]  the ID of the stock icon to use for the drag.}
\item{\code{hot.x}}{[integer]  the X offset within the icon of the hotspot.}
\item{\code{hot.y}}{[integer]  the Y offset within the icon of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
