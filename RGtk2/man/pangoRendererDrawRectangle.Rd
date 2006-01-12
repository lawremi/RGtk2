\alias{pangoRendererDrawRectangle}
\name{pangoRendererDrawRectangle}
\title{pangoRendererDrawRectangle}
\description{Draws an axis-aligned rectangle in user space coordinates with the
specified \code{\link{PangoRenderer}}.}
\usage{pangoRendererDrawRectangle(object, part, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\code{part}}{[\code{\link{PangoRenderPart}}]  type of object this rectangle is part of}
\item{\code{x}}{[integer]  x position at which to draw rectangle, in user space coordinates in Pango units}
\item{\code{y}}{[integer]  y position at which to draw rectangle, in user space coordinates in Pango units}
\item{\code{width}}{[integer]  width of rectangle in PangoUnits in user space coordinates}
\item{\code{height}}{[integer]  height of rectangle in PangoUnits in user space coordinates}
}
\details{  Since  1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
