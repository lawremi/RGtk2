\alias{gtkDragSetIconPixbuf}
\name{gtkDragSetIconPixbuf}
\title{gtkDragSetIconPixbuf}
\description{Sets \code{pixbuf} as the icon for a given drag.}
\usage{gtkDragSetIconPixbuf(object, pixbuf, hot.x, hot.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDragContext}}]  the context for a drag. (This must be called 
           with a  context for the source side of a drag)}
\item{\verb{pixbuf}}{[\verb{\link{GdkPixbuf}}]  the \verb{\link{GdkPixbuf}} to use as the drag icon.}
\item{\verb{hot.x}}{[integer]  the X offset within \code{widget} of the hotspot.}
\item{\verb{hot.y}}{[integer]  the Y offset within \code{widget} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
