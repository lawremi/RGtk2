\alias{gdkPixbufRenderToDrawable}
\name{gdkPixbufRenderToDrawable}
\title{gdkPixbufRenderToDrawable}
\description{
Renders a rectangular portion of a pixbuf to a drawable while using the
specified GC.  This is done using GdkRGB, so the specified drawable must have
the GdkRGB visual and colormap.  Note that this function will ignore the
opacity information for images with an alpha channel; the GC must already
have the clipping mask set if you want transparent regions to show through.
\strong{WARNING: \code{gdk_pixbuf_render_to_drawable} is deprecated and should not be used in newly-written code. This function is obsolete. Use \code{\link{gdkDrawPixbuf}} instead.}
}
\usage{gdkPixbufRenderToDrawable(object, drawable, gc, src.x = 0, src.y = 0, dest.x, dest.y, width = -1, height = -1, dither = GDK_RGB_DITHER_NORMAL, x.dither = 0, y.dither = 0)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  A pixbuf.}
\item{\code{drawable}}{[\code{\link{GdkDrawable}}]  Destination drawable.}
\item{\code{gc}}{[\code{\link{GdkGC}}]  GC used for rendering.}
\item{\code{src.x}}{[integer]  Source X coordinate within pixbuf.}
\item{\code{src.y}}{[integer]  Source Y coordinate within pixbuf.}
\item{\code{dest.x}}{[integer]  Destination X coordinate within drawable.}
\item{\code{dest.y}}{[integer]  Destination Y coordinate within drawable.}
\item{\code{width}}{[integer]  Width of region to render, in pixels, or -1 to use pixbuf width}
\item{\code{height}}{[integer]  Height of region to render, in pixels, or -1 to use pixbuf height}
\item{\code{dither}}{[\code{\link{GdkRgbDither}}]  Dithering mode for GdkRGB.}
\item{\code{x.dither}}{[integer]  X offset for dither.}
\item{\code{y.dither}}{[integer]  Y offset for dither.}
}
\details{For an explanation of dither offsets, see the GdkRGB documentation.  In
brief, the dither offset is important when re-rendering partial regions of an
image to a rendered version of the full image, or for when the offsets to a
base position change, as in scrolling.  The dither matrix has to be shifted
for consistent visual results.  If you do not have any of these cases, the
dither offsets can be both zero.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
