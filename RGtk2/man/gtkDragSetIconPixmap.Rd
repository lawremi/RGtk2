\alias{gtkDragSetIconPixmap}
\name{gtkDragSetIconPixmap}
\title{gtkDragSetIconPixmap}
\description{Sets \code{pixmap} as the icon for a given drag. GTK+ retains
references for the arguments, and will release them when
they are no longer needed. In general, \code{\link{gtkDragSetIconPixbuf}}
will be more convenient to use.}
\usage{gtkDragSetIconPixmap(object, colormap, pixmap, mask, hot.x, hot.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDragContext}}]  the context for a drag. (This must be called 
           with a  context for the source side of a drag)}
\item{\verb{colormap}}{[\verb{\link{GdkColormap}}]  the colormap of the icon }
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}]  the image data for the icon }
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  the transparency mask for the icon}
\item{\verb{hot.x}}{[integer]  the X offset within \code{pixmap} of the hotspot.}
\item{\verb{hot.y}}{[integer]  the Y offset within \code{pixmap} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
