\alias{gtkDragSetIconPixmap}
\name{gtkDragSetIconPixmap}
\title{gtkDragSetIconPixmap}
\description{Sets \code{pixmap} as the icon for a given drag. GTK+ retains
references for the arguments, and will release them when
they are no longer needed. In general, \code{\link{gtkDragSetIconPixbuf}}
will be more convenient to use.}
\usage{gtkDragSetIconPixmap(object, colormap, pixmap, mask, hot.x, hot.y)}
\arguments{
\item{\verb{object}}{the context for a drag. (This must be called
with a  context for the source side of a drag)}
\item{\verb{colormap}}{the colormap of the icon}
\item{\verb{pixmap}}{the image data for the icon}
\item{\verb{mask}}{the transparency mask for the icon or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{hot.x}}{the X offset within \code{pixmap} of the hotspot.}
\item{\verb{hot.y}}{the Y offset within \code{pixmap} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
