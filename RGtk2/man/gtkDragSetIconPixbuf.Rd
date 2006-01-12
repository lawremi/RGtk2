\alias{gtkDragSetIconPixbuf}
\name{gtkDragSetIconPixbuf}
\title{gtkDragSetIconPixbuf}
\description{Sets \code{pixbuf} as the icon for a given drag.}
\usage{gtkDragSetIconPixbuf(object, pixbuf, hot.x, hot.y)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDragContext}}]  the context for a drag. (This must be called 
           with a  context for the source side of a drag)}
\item{\code{pixbuf}}{[\code{\link{GdkPixbuf}}]  the \code{\link{GdkPixbuf}} to use as the drag icon.}
\item{\code{hot.x}}{[integer]  the X offset within \code{widget} of the hotspot.}
\item{\code{hot.y}}{[integer]  the Y offset within \code{widget} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
