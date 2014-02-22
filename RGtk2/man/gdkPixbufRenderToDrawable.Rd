\alias{gdkPixbufRenderToDrawable}
\name{gdkPixbufRenderToDrawable}
\title{gdkPixbufRenderToDrawable}
\description{
Renders a rectangular portion of a pixbuf to a drawable while using the
specified GC.  This is done using GdkRGB, so the specified drawable must have
the GdkRGB visual and colormap.  Note that this function will ignore the
opacity information for images with an alpha channel; the GC must already
have the clipping mask set if you want transparent regions to show through.
\strong{WARNING: \code{gdk_pixbuf_render_to_drawable} has been deprecated since version 2.4 and should not be used in newly-written code. This function is obsolete. Use \code{\link{gdkDrawPixbuf}} instead.}
}
\usage{gdkPixbufRenderToDrawable(object, drawable, gc, src.x = 0, src.y = 0, 
    dest.x, dest.y, width = -1, height = -1, dither = "GDK_RGB_DITHER_NORMAL", 
    x.dither = 0, y.dither = 0)}
\arguments{
\item{\verb{object}}{A pixbuf.}
\item{\verb{drawable}}{Destination drawable.}
\item{\verb{gc}}{GC used for rendering.}
\item{\verb{src.x}}{Source X coordinate within pixbuf.}
\item{\verb{src.y}}{Source Y coordinate within pixbuf.}
\item{\verb{dest.x}}{Destination X coordinate within drawable.}
\item{\verb{dest.y}}{Destination Y coordinate within drawable.}
\item{\verb{width}}{Width of region to render, in pixels, or -1 to use pixbuf width}
\item{\verb{height}}{Height of region to render, in pixels, or -1 to use pixbuf height}
\item{\verb{dither}}{Dithering mode for GdkRGB.}
\item{\verb{x.dither}}{X offset for dither.}
\item{\verb{y.dither}}{Y offset for dither.}
}
\details{For an explanation of dither offsets, see the GdkRGB documentation.  In
brief, the dither offset is important when re-rendering partial regions of an
image to a rendered version of the full image, or for when the offsets to a
base position change, as in scrolling.  The dither matrix has to be shifted
for consistent visual results.  If you do not have any of these cases, the
dither offsets can be both zero.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
