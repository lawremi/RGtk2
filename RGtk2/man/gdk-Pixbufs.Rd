\alias{gdk-Pixbufs}
\name{gdk-Pixbufs}
\title{Pixbufs}
\description{Functions for rendering pixbufs on drawables}
\section{Methods and Functions}{
\code{\link{gdkPixbufRenderThresholdAlpha}(object, bitmap, src.x, src.y, dest.x, dest.y, width = -1, height = -1, alpha.threshold)}\cr
\code{\link{gdkPixbufRenderToDrawable}(object, drawable, gc, src.x = 0, src.y = 0, dest.x, dest.y, width = -1, height = -1, dither = "GDK_RGB_DITHER_NORMAL", x.dither = 0, y.dither = 0)}\cr
\code{\link{gdkPixbufRenderToDrawableAlpha}(object, drawable, src.x = 0, src.y = 0, dest.x, dest.y, width = -1, height = -1, alpha.mode = NULL, alpha.threshold = NULL, dither = "GDK_RGB_DITHER_NORMAL", x.dither = 0, y.dither = 0)}\cr
\code{\link{gdkPixbufRenderPixmapAndMask}(object, alpha.threshold = 127)}\cr
\code{\link{gdkPixbufRenderPixmapAndMaskForColormap}(object, colormap, alpha.threshold = 127)}\cr
\code{\link{gdkPixbufGetFromDrawable}(dest = NULL, src, cmap = NULL, src.x, src.y, dest.x, dest.y, width, height)}\cr
\code{\link{gdkPixbufGetFromImage}(src, cmap, src.x, src.y, dest.x, dest.y, width, height)}\cr
}
\section{Detailed Description}{These functions allow to render pixbufs on drawables. Pixbufs are
client-side images. For details on how to create and manipulate
pixbufs, see the \code{\link{GdkPixbuf}} API documentation.}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Pixbufs.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
