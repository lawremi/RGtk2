\alias{gdk-Drawing-Primitives}
\alias{GdkDrawable}
\alias{GdkSegment}
\alias{GdkTrapezoid}
\name{gdk-Drawing-Primitives}
\title{Drawing Primitives}
\description{Functions for drawing points, lines, arcs, and text}
\section{Methods and Functions}{
\code{\link{gdkDrawableSetData}(object, key, data)}\cr
\code{\link{gdkDrawableGetData}(object, key)}\cr
\code{\link{gdkDrawableGetDisplay}(object)}\cr
\code{\link{gdkDrawableGetScreen}(object)}\cr
\code{\link{gdkDrawableGetVisual}(object)}\cr
\code{\link{gdkDrawableSetColormap}(object, colormap)}\cr
\code{\link{gdkDrawableGetColormap}(object)}\cr
\code{\link{gdkDrawableGetDepth}(object)}\cr
\code{\link{gdkDrawableGetSize}(object)}\cr
\code{\link{gdkDrawableGetClipRegion}(object)}\cr
\code{\link{gdkDrawableGetVisibleRegion}(object)}\cr
\code{\link{gdkDrawPoint}(object, gc, x, y)}\cr
\code{\link{gdkDrawPoints}(object, gc, points)}\cr
\code{\link{gdkDrawLine}(object, gc, x1, y1, x2, y2)}\cr
\code{\link{gdkDrawLines}(object, gc, points)}\cr
\code{\link{gdkDrawPixbuf}(object, gc = NULL, pixbuf, src.x, src.y, dest.x, dest.y, width = -1, height = -1, dither = "GDK_RGB_DITHER_NORMAL", x.dither = 0, y.dither = 0)}\cr
\code{\link{gdkDrawSegments}(object, gc, segs)}\cr
\code{\link{gdkDrawRectangle}(object, gc, filled, x, y, width, height)}\cr
\code{\link{gdkDrawArc}(object, gc, filled, x, y, width, height, angle1, angle2)}\cr
\code{\link{gdkDrawPolygon}(object, gc, filled, points)}\cr
\code{\link{gdkDrawTrapezoids}(drawable, gc, trapezoids)}\cr
\code{\link{gdkDrawGlyphs}(object, gc, font, x, y, glyphs)}\cr
\code{\link{gdkDrawGlyphsTransformed}(drawable, gc, matrix, font, x, y, glyphs)}\cr
\code{\link{gdkDrawLayoutLine}(object, gc, x, y, line)}\cr
\code{\link{gdkDrawLayoutLineWithColors}(drawable, gc, x, y, line, foreground, background)}\cr
\code{\link{gdkDrawLayout}(object, gc, x, y, layout)}\cr
\code{\link{gdkDrawLayoutWithColors}(drawable, gc, x, y, layout, foreground, background)}\cr
\code{\link{gdkDrawString}(object, font, gc, x, y, string)}\cr
\code{\link{gdkDrawText}(object, font, gc, x, y, text, text.length)}\cr
\code{\link{gdkDrawTextWc}(object, font, gc, x, text)}\cr
\code{\link{gdkDrawDrawable}(object, gc, src, xsrc, ysrc, xdest, ydest, width, height)}\cr
\code{\link{gdkDrawImage}(object, gc, image, xsrc, ysrc, xdest, ydest, width, height)}\cr
\code{\link{gdkDrawableGetImage}(object, x, y, width, height)}\cr
\code{\link{gdkDrawableCopyToImage}(object, image = NULL, src.x, src.y, dest.x, dest.y, width, height)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GdkDrawable
         +----GdkWindow
         +----GdkPixmap}}
\section{Detailed Description}{These functions provide support for drawing points, lines, arcs and text
onto what are called 'drawables'. Drawables, as the name suggests, are things
which support drawing onto them, and are either \code{\link{GdkWindow}} or \code{\link{GdkPixmap}}
objects.
  
Many of the drawing operations take a \code{\link{GdkGC}} argument, which represents a
graphics context. This \code{\link{GdkGC}} contains a number of drawing attributes such
as foreground color, background color and line width, and is used to reduce
the number of arguments needed for each drawing operation. See the
Graphics Contexts section for
more information.
  
Some of the drawing operations take Pango data structures like \code{\link{PangoContext}},
\code{\link{PangoLayout}} or \code{\link{PangoLayoutLine}} as arguments. If you're using GTK+, the ususal
way to obtain these structures is via \code{\link{gtkWidgetCreatePangoContext}} or
\code{\link{gtkWidgetCreatePangoLayout}}.}
\section{Structures}{\describe{
\item{\verb{GdkDrawable}}{
An opaque structure representing an object that can be
drawn onto. This can be a \code{\link{GdkPixmap}}, a \code{\link{GdkBitmap}},
or a \code{\link{GdkWindow}}.

}
\item{\verb{GdkSegment}}{
Specifies the start and end point of a line for use by the \code{\link{gdkDrawSegments}}
function.
\strong{\verb{GdkSegment} is a \link{transparent-type}.}

\describe{
\item{\verb{x1}}{[integer] the x coordinate of the start point.}
\item{\verb{y1}}{[integer] the y coordinate of the start point.}
\item{\verb{x2}}{[integer] the x coordinate of the end point.}
\item{\verb{y2}}{[integer] the y coordinate of the end point.}
}

}
\item{\verb{GdkTrapezoid}}{
Specifies a trapezpoid for use by the \code{\link{gdkDrawTrapezoids}}.
The trapezoids used here have parallel, horizontal top and
bottom edges.
\strong{\verb{GdkTrapezoid} is a \link{transparent-type}.}

\describe{
\item{\verb{y1}}{[numeric] the y coordinate of the start point.}
\item{\verb{x11}}{[numeric] the x coordinate of the top left corner}
\item{\verb{x21}}{[numeric] the x coordinate of the top right corner}
\item{\verb{y2}}{[numeric] the y coordinate of the end point.}
\item{\verb{x12}}{[numeric] the x coordinate of the bottom left corner}
\item{\verb{x22}}{[numeric] the x coordinate of the bottom right corner}
}

}
}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Drawing-Primitives.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
