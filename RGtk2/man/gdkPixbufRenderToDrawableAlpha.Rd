\alias{gdkPixbufRenderToDrawableAlpha}
\name{gdkPixbufRenderToDrawableAlpha}
\title{gdkPixbufRenderToDrawableAlpha}
\description{
Renders a rectangular portion of a pixbuf to a drawable.  The destination
drawable must have a colormap. All windows have a colormap, however, pixmaps
only have colormap by default if they were created with a non-\code{NULL} window argument.
Otherwise a colormap must be set on them with gdk\_drawable\_set\_colormap.
\strong{WARNING: \code{gdk_pixbuf_render_to_drawable_alpha} is deprecated and should not be used in newly-written code. This function is obsolete. Use \code{\link{gdkDrawPixbuf}} instead.}
}
\usage{gdkPixbufRenderToDrawableAlpha(object, drawable, src.x = 0, src.y = 0, dest.x, dest.y, width = -1, height = -1, alpha.mode = NULL, alpha.threshold = NULL, dither = "GDK_RGB_DITHER_NORMAL", x.dither = 0, y.dither = 0)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  A pixbuf.}
\item{\code{drawable}}{[\code{\link{GdkDrawable}}]  Destination drawable.}
\item{\code{src.x}}{[integer]  Source X coordinate within pixbuf.}
\item{\code{src.y}}{[integer]  Source Y coordinates within pixbuf.}
\item{\code{dest.x}}{[integer]  Destination X coordinate within drawable.}
\item{\code{dest.y}}{[integer]  Destination Y coordinate within drawable.}
\item{\code{width}}{[integer]  Width of region to render, in pixels, or -1 to use pixbuf width.}
\item{\code{height}}{[integer]  Height of region to render, in pixels, or -1 to use pixbuf height.}
\item{\code{alpha.mode}}{[\code{\link{GdkPixbufAlphaMode}}]  Ignored. Present for backwards compatibility.}
\item{\code{alpha.threshold}}{[integer]  Ignored. Present for backwards compatibility}
\item{\code{dither}}{[\code{\link{GdkRgbDither}}]  Dithering mode for GdkRGB.}
\item{\code{x.dither}}{[integer]  X offset for dither.}
\item{\code{y.dither}}{[integer]  Y offset for dither.}
}
\details{On older X servers, rendering pixbufs with an alpha channel involves round trips
to the X server, and may be somewhat slow.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
