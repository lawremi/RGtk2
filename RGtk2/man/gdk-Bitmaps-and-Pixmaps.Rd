\alias{gdk-Bitmaps-and-Pixmaps}
\alias{GdkPixmap}
\alias{GdkBitmap}
\alias{gdkPixmap}
\name{gdk-Bitmaps-and-Pixmaps}
\title{Bitmaps and Pixmaps}
\description{Offscreen drawables}
\section{Methods and Functions}{
\code{\link{gdkPixmapNew}(drawable = NULL, width, height, depth = -1)}\cr
\code{\link{gdkBitmapCreateFromData}(drawable = NULL, data, width, height)}\cr
\code{\link{gdkPixmapCreateFromData}(drawable = NULL, data, height, depth, fg, bg)}\cr
\code{\link{gdkPixmapCreateFromXpm}(drawable, transparent.color, filename)}\cr
\code{\link{gdkPixmapColormapCreateFromXpm}(drawable, colormap, transparent.color, filename)}\cr
\code{\link{gdkPixmapCreateFromXpmD}(drawable, transparent.color, data)}\cr
\code{\link{gdkPixmapColormapCreateFromXpmD}(drawable, colormap, transparent.color, data)}\cr
\code{gdkPixmap(drawable, data, transparent.color, height, width, depth, filename, colormap, fg, bg)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GdkDrawable
         +----GdkPixmap}}
\section{Detailed Description}{Pixmaps are offscreen drawables. They can be drawn upon with the
standard drawing primitives, then copied to another drawable (such as
a \code{\link{GdkWindow}}) with \code{gdkPixmapDraw()}. The depth of a pixmap
is the number of bits per pixels. Bitmaps are simply pixmaps
with a depth of 1. (That is, they are monochrome bitmaps - each
pixel can be either on or off).}
\section{Structures}{\describe{
\item{\verb{GdkPixmap}}{
An opaque structure representing an offscreen drawable.
Pointers to structures of type \code{\link{GdkPixmap}}, \code{\link{GdkBitmap}},
and \code{\link{GdkWindow}}, can often be used interchangeably.
The type \code{\link{GdkDrawable}} refers generically to any of
these types.

}
\item{\verb{GdkBitmap}}{
An opaque structure representing an offscreen drawable of depth
1. Pointers to structures of type \code{\link{GdkPixmap}}, \code{\link{GdkBitmap}}, and
\code{\link{GdkWindow}}, can often be used interchangeably.  The type \code{\link{GdkDrawable}}
refers generically to any of these types.

}
}}
\section{Convenient Construction}{\code{gdkPixmap} is the result of collapsing the constructors of \code{GdkPixmap} (\code{\link{gdkPixmapNew}}, \code{\link{gdkBitmapCreateFromData}}, \code{\link{gdkPixmapCreateFromData}}, \code{\link{gdkPixmapCreateFromXpm}}, \code{\link{gdkPixmapColormapCreateFromXpm}}, \code{\link{gdkPixmapCreateFromXpmD}}, \code{\link{gdkPixmapColormapCreateFromXpmD}}, NULL, NULL) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Bitmaps-and-Pixmaps.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
