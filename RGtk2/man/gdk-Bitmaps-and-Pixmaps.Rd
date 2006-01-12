\alias{gdk-Bitmaps-and-Pixmaps}
\alias{GdkPixmap}
\alias{GdkBitmap}
\alias{gdkPixmap}
\name{gdk-Bitmaps-and-Pixmaps}
\title{Bitmaps and Pixmaps}
\description{Offscreen drawables}
\usage{
\link{gdkPixmapNew}(drawable = NULL, width, height, depth = -1)
\link{gdkBitmapCreateFromData}(drawable = NULL, data, width, height)
\link{gdkPixmapCreateFromData}(drawable = NULL, data, height, depth, fg, bg)
\link{gdkPixmapCreateFromXpm}(drawable, transparent.color, filename)
\link{gdkPixmapColormapCreateFromXpm}(drawable, colormap, transparent.color, filename)
\link{gdkPixmapCreateFromXpmD}(drawable, transparent.color, data)
\link{gdkPixmapColormapCreateFromXpmD}(drawable, colormap, transparent.color, data)
gdkPixmap(drawable = NULL, width, height, depth = -1)
}
\details{Pixmaps are offscreen drawables. They can be drawn upon with the
standard drawing primitives, then copied to another drawable (such as
a \code{\link{GdkWindow}}) with \code{gdkPixmapDraw()}. The depth of a pixmap
is the number of bits per pixels. Bitmaps are simply pixmaps
with a depth of 1. (That is, they are monochrome bitmaps - each
pixel can be either on or off).}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GdkDrawable}
         +----GdkPixmap}}
\section{Structures}{\describe{
\item{\code{struct GdkPixmap}}{
An opaque structure representing an offscreen drawable.
Pointers to structures of type \code{\link{GdkPixmap}}, \code{\link{GdkBitmap}},
and \code{\link{GdkWindow}}, can often be used interchangeably. 
The type \code{\link{GdkDrawable}} refers generically to any of
these types.

}
\item{\code{struct GdkBitmap}}{
An opaque structure representing an offscreen drawable of depth
1. Pointers to structures of type \code{\link{GdkPixmap}}, \code{\link{GdkBitmap}}, and
\code{\link{GdkWindow}}, can often be used interchangeably.  The type \code{\link{GdkDrawable}}
refers generically to any of these types.

}
}}
\section{Convenient Construction}{\code{gdkPixmap} is the equivalent of \code{\link{gdkPixmapNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Bitmaps-and-Pixmaps.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
