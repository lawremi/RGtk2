\alias{gdk-Pixbufs}
\name{gdk-Pixbufs}
\title{Pixbufs}
\description{Functions for rendering pixbufs on drawables}
\usage{
\link{gdkPixbufRenderThresholdAlpha}(object, bitmap, src.x, src.y, dest.x, dest.y, width = -1, height = -1, alpha.threshold)
\link{gdkPixbufRenderToDrawable}(object, drawable, gc, src.x = 0, src.y = 0, dest.x, dest.y, width = -1, height = -1, dither = GDK_RGB_DITHER_NORMAL, x.dither = 0, y.dither = 0)
\link{gdkPixbufRenderToDrawableAlpha}(object, drawable, src.x = 0, src.y = 0, dest.x, dest.y, width = -1, height = -1, alpha.mode = NULL, alpha.threshold = NULL, dither = GDK_RGB_DITHER_NORMAL, x.dither = 0, y.dither = 0)
\link{gdkPixbufRenderPixmapAndMask}(object, alpha.threshold = 127)
\link{gdkPixbufRenderPixmapAndMaskForColormap}(object, colormap, alpha.threshold = 127)
\link{gdkPixbufGetFromDrawable}(src, cmap, src.x, src.y, dest.x, dest.y, width, height)
\link{gdkPixbufGetFromImage}(src, cmap, src.x, src.y, dest.x, dest.y, width, height)
}
\details{These functions allow to render pixbufs on drawables. Pixbufs are
client-side images. For details on how to create and manipulate
pixbufs, see the \code{\link{GdkPixbuf}} API documentation.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Pixbufs.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
