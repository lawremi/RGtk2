\alias{pangoRendererDrawRectangle}
\name{pangoRendererDrawRectangle}
\title{pangoRendererDrawRectangle}
\description{Draws an axis-aligned rectangle in user space coordinates with the
specified \code{\link{PangoRenderer}}.}
\usage{pangoRendererDrawRectangle(object, part, x, y, width, height)}
\arguments{
\item{\code{object}}{[\code{\link{PangoRenderer}}]  a \code{\link{PangoRenderer}}}
\item{\code{part}}{[\code{\link{PangoRenderPart}}]  type of object this rectangle is part of}
\item{\code{x}}{[integer]  X position at which to draw rectangle, in user space coordinates in Pango units}
\item{\code{y}}{[integer]  Y position at which to draw rectangle, in user space coordinates in Pango units}
\item{\code{width}}{[integer]  width of rectangle in Pango units in user space coordinates}
\item{\code{height}}{[integer]  height of rectangle in Pango units in user space coordinates}
}
\details{This should be called while \code{renderer} is already active.  Use
\code{\link{pangoRendererActivate}} to activate a renderer.  

  Since  1.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
