\alias{gdk-Drawing-Primitives}
\alias{GdkDrawable}
\alias{GdkSegment}
\alias{GdkTrapezoid}
\name{gdk-Drawing-Primitives}
\title{Drawing Primitives}
\description{Functions for drawing points, lines, arcs, and text}
\section{Methods and Functions}{
\link{gdkDrawableSetData}(object, key, data)
\link{gdkDrawableGetData}(object, key)
\link{gdkDrawableGetDisplay}(object)
\link{gdkDrawableGetScreen}(object)
\link{gdkDrawableGetVisual}(object)
\link{gdkDrawableSetColormap}(object, colormap)
\link{gdkDrawableGetColormap}(object)
\link{gdkDrawableGetDepth}(object)
\link{gdkDrawableGetSize}(object)
\link{gdkDrawableGetClipRegion}(object)
\link{gdkDrawableGetVisibleRegion}(object)
\link{gdkDrawPoint}(object, gc, x, y)
\link{gdkDrawPoints}(object, gc, points)
\link{gdkDrawLine}(object, gc, x1, y1, x2, y2)
\link{gdkDrawLines}(object, gc, points)
\link{gdkDrawPixbuf}(object, gc = NULL, pixbuf, src.x, src.y, dest.x, dest.y, width = -1, height = -1, dither = GDK_RGB_DITHER_NORMAL, x.dither = 0, y.dither = 0)
\link{gdkDrawSegments}(object, gc, segs)
\link{gdkDrawRectangle}(object, gc, filled, x, y, width, height)
\link{gdkDrawArc}(object, gc, filled, x, y, width, height, angle1, angle2)
\link{gdkDrawPolygon}(object, gc, filled, points)
\link{gdkDrawTrapezoids}(drawable, gc, trapezoids)
\link{gdkDrawGlyphs}(object, gc, font, x, y, glyphs)
\link{gdkDrawGlyphsTransformed}(drawable, gc, matrix, font, x, y, glyphs)
\link{gdkDrawLayoutLine}(object, gc, x, y, line)
\link{gdkDrawLayoutLineWithColors}(drawable, gc, x, y, line, foreground, background)
\link{gdkDrawLayout}(object, gc, x, y, layout)
\link{gdkDrawLayoutWithColors}(drawable, gc, x, y, layout, foreground, background)
\link{gdkDrawString}(object, font, gc, x, y, string)
\link{gdkDrawText}(object, font, gc, x, y, text, text.length)
\link{gdkDrawTextWc}(object, font, gc, x, text)
\link{gdkDrawDrawable}(object, gc, src, xsrc, ysrc, xdest, ydest, width, height)
\link{gdkDrawImage}(object, gc, image, xsrc, ysrc, xdest, ydest, width, height)
\link{gdkDrawableGetImage}(object, x, y, width, height)
\link{gdkDrawableCopyToImage}(object, image = NULL, src.x, src.y, dest.x, dest.y, width, height)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GdkDrawable
         +----\link{GdkWindow}
         +----\link{GdkPixmap}}}
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
\item{\code{GdkDrawable}}{
An opaque structure representing an object that can be
drawn onto. This can be a \code{\link{GdkPixmap}}, a \code{\link{GdkBitmap}},
or a \code{\link{GdkWindow}}.

}
\item{\code{GdkSegment}}{
Specifies the start and end point of a line for use by the \code{\link{gdkDrawSegments}}
function.
\strong{\code{GdkSegment} is a \link{transparent-type}.}

\describe{
\item{\code{x1}}{[integer] the x coordinate of the start point.}
\item{\code{y1}}{[integer] the y coordinate of the start point.}
\item{\code{x2}}{[integer] the x coordinate of the end point.}
\item{\code{y2}}{[integer] the y coordinate of the end point.}
}

}
\item{\code{GdkTrapezoid}}{
Specifies a trapezpoid for use by the \code{\link{gdkDrawTrapezoids}}.
The trapezoids used here have parallel, horizontal top and 
bottom edges. 
\strong{\code{GdkTrapezoid} is a \link{transparent-type}.}

\describe{
\item{\code{y1}}{[numeric] the y coordinate of the start point.}
\item{\code{x11}}{[numeric] the x coordinate of the top left corner}
\item{\code{x21}}{[numeric] the x coordinate of the top right corner}
\item{\code{y2}}{[numeric] the y coordinate of the end point.}
\item{\code{x12}}{[numeric] the x coordinate of the bottom left corner}
\item{\code{x22}}{[numeric] the x coordinate of the bottom right corner}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Drawing-Primitives.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
