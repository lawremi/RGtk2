\alias{gtkDragSetIconStock}
\name{gtkDragSetIconStock}
\title{gtkDragSetIconStock}
\description{Sets the icon for a given drag from a stock ID.}
\usage{gtkDragSetIconStock(object, stock.id, hot.x, hot.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDragContext}}]  the context for a drag. (This must be called 
           with a  context for the source side of a drag)}
\item{\verb{stock.id}}{[character]  the ID of the stock icon to use for the drag.}
\item{\verb{hot.x}}{[integer]  the X offset within the icon of the hotspot.}
\item{\verb{hot.y}}{[integer]  the Y offset within the icon of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
