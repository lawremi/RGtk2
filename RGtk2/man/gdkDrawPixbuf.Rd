\alias{gdkDrawPixbuf}
\name{gdkDrawPixbuf}
\title{gdkDrawPixbuf}
\description{Renders a rectangular portion of a pixbuf to a drawable.  The destination
drawable must have a colormap. All windows have a colormap, however, pixmaps
only have colormap by default if they were created with a non-\code{NULL} window 
argument. Otherwise a colormap must be set on them with 
\code{\link{gdkDrawableSetColormap}}.}
\usage{gdkDrawPixbuf(object, gc = NULL, pixbuf, src.x, src.y, dest.x, 
    dest.y, width = -1, height = -1, dither = "GDK_RGB_DITHER_NORMAL", 
    x.dither = 0, y.dither = 0)}
\arguments{
\item{\verb{object}}{Destination drawable.}
\item{\verb{gc}}{a \code{\link{GdkGC}}, used for clipping, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{pixbuf}}{a \code{\link{GdkPixbuf}}}
\item{\verb{src.x}}{Source X coordinate within pixbuf.}
\item{\verb{src.y}}{Source Y coordinates within pixbuf.}
\item{\verb{dest.x}}{Destination X coordinate within drawable.}
\item{\verb{dest.y}}{Destination Y coordinate within drawable.}
\item{\verb{width}}{Width of region to render, in pixels, or -1 to use pixbuf width.}
\item{\verb{height}}{Height of region to render, in pixels, or -1 to use pixbuf height.}
\item{\verb{dither}}{Dithering mode for \verb{GdkRGB}.}
\item{\verb{x.dither}}{X offset for dither.}
\item{\verb{y.dither}}{Y offset for dither.}
}
\details{On older X servers, rendering pixbufs with an alpha channel involves round 
trips to the X server, and may be somewhat slow.
  
If GDK is built with the Sun mediaLib library, the gdk_draw_pixbuf
function is accelerated using mediaLib, which provides hardware
acceleration on Intel, AMD, and Sparc chipsets.  If desired, mediaLib
support can be turned off by setting the GDK_DISABLE_MEDIALIB environment
variable.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
