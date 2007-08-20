\alias{gdkDrawPixbuf}
\name{gdkDrawPixbuf}
\title{gdkDrawPixbuf}
\description{Renders a rectangular portion of a pixbuf to a drawable.  The destination
drawable must have a colormap. All windows have a colormap, however, pixmaps
only have colormap by default if they were created with a non-\code{NULL} window 
argument. Otherwise a colormap must be set on them with 
\code{\link{gdkDrawableSetColormap}}.}
\usage{gdkDrawPixbuf(object, gc = NULL, pixbuf, src.x, src.y, dest.x, dest.y, width = -1, height = -1, dither = "GDK_RGB_DITHER_NORMAL", x.dither = 0, y.dither = 0)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  Destination drawable.}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}, used for clipping, or \code{NULL}}
\item{\code{pixbuf}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{src.x}}{[integer]  Source X coordinate within pixbuf.}
\item{\code{src.y}}{[integer]  Source Y coordinates within pixbuf.}
\item{\code{dest.x}}{[integer]  Destination X coordinate within drawable.}
\item{\code{dest.y}}{[integer]  Destination Y coordinate within drawable.}
\item{\code{width}}{[integer]  Width of region to render, in pixels, or -1 to use pixbuf width.}
\item{\code{height}}{[integer]  Height of region to render, in pixels, or -1 to use pixbuf height.}
\item{\code{dither}}{[\code{\link{GdkRgbDither}}]  Dithering mode for \code{GdkRGB}.}
\item{\code{x.dither}}{[integer]  X offset for dither.}
\item{\code{y.dither}}{[integer]  Y offset for dither.}
}
\details{On older X servers, rendering pixbufs with an alpha channel involves round 
trips to the X server, and may be somewhat slow.
  
The clip mask of \code{gc} is ignored, but clip rectangles and clip regions work
fine.
  
If GDK is built with the Sun mediaLib library, the gdk\_draw\_pixbuf
function is accelerated using mediaLib, which provides hardware
acceleration on Intel, AMD, and Sparc chipsets.  If desired, mediaLib
support can be turned off by setting the GDK\_DISABLE\_MEDIALIB environment
variable.  

  Since  2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
