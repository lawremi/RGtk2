\alias{gdk-Points-Rectangles-and-Regions}
\alias{GdkPoint}
\alias{GdkRectangle}
\alias{GdkRegion}
\alias{GdkSpan}
\alias{GdkSpanFunc}
\alias{GdkFillRule}
\alias{GdkOverlapType}
\name{gdk-Points-Rectangles-and-Regions}
\title{Points, Rectangles and Regions}
\description{Simple graphical data types}
\section{Methods and Functions}{
\code{\link{gdkRectangleIntersect}(src1, src2)}\cr
\code{\link{gdkRectangleUnion}(src1, src2)}\cr
\code{\link{gdkRegionNew}()}\cr
\code{\link{gdkRegionPolygon}(points, fill.rule)}\cr
\code{\link{gdkRegionCopy}(object)}\cr
\code{\link{gdkRegionRectangle}(rectangle)}\cr
\code{\link{gdkRegionGetClipbox}(object)}\cr
\code{\link{gdkRegionGetRectangles}(object)}\cr
\code{\link{gdkRegionEmpty}(object)}\cr
\code{\link{gdkRegionEqual}(object, region2)}\cr
\code{\link{gdkRegionRectEqual}(object, rectangle)}\cr
\code{\link{gdkRegionPointIn}(object, x, y)}\cr
\code{\link{gdkRegionRectIn}(object, rect)}\cr
\code{\link{gdkRegionOffset}(object, dx, dy)}\cr
\code{\link{gdkRegionShrink}(object, dx, dy)}\cr
\code{\link{gdkRegionUnionWithRect}(object, rect)}\cr
\code{\link{gdkRegionIntersect}(object, source2)}\cr
\code{\link{gdkRegionUnion}(object, source2)}\cr
\code{\link{gdkRegionSubtract}(object, source2)}\cr
\code{\link{gdkRegionXor}(object, source2)}\cr
\code{\link{gdkRegionSpansIntersectForeach}(object, spans, sorted, fun, data)}\cr
}
\section{Detailed Description}{GDK provides the \code{\link{GdkPoint}}, \code{\link{GdkRectangle}}, \code{\link{GdkRegion}} and \code{\link{GdkSpan}} data types
for representing pixels and sets of pixels on the screen.
  \code{\link{GdkPoint}} is a simple structure containing an x and y coordinate of a point.
  \code{\link{GdkRectangle}} is a structure holding the position and size of a rectangle.
The intersection of two rectangles can be computed with
\code{\link{gdkRectangleIntersect}}. To find the union of two rectangles use
\code{\link{gdkRectangleUnion}}.
  \code{\link{GdkRegion}} is an opaque data type holding a set of arbitrary pixels, and is
usually used for clipping graphical operations (see \code{\link{gdkGCSetClipRegion}}).
  \code{\link{GdkSpan}} is a structure holding a spanline. A spanline is a horizontal line that
is one pixel wide. It is mainly used when rasterizing other graphics primitives.
It can be intersected to regions by using \code{\link{gdkRegionSpansIntersectForeach}}.}
\section{Structures}{\describe{
\item{\verb{GdkPoint}}{
Defines the x and y coordinates of a point.
\strong{\verb{GdkPoint} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{the x coordinate of the point.}
\item{\code{y}}{the y coordinate of the point.}
}

}
\item{\verb{GdkRectangle}}{
Defines the position and size of a rectangle.
\strong{\verb{GdkRectangle} is a \link{transparent-type}.}

\describe{
\item{\verb{x}}{[integer] the x coordinate of the left edge of the rectangle.}
\item{\verb{y}}{[integer] the y coordinate of the top of the rectangle.}
\item{\verb{width}}{[integer] the width of the rectangle.}
\item{\verb{height}}{[integer] the height of the rectangle.}
}

}
\item{\verb{GdkRegion}}{
A GdkRegion represents a set of pixels on the screen.

}
\item{\verb{GdkSpan}}{
A GdkSpan represents a horizontal line of pixels starting
at the pixel with coordinates \code{x}, \code{y} and ending before \code{x} + \code{width}, \code{y}.
\strong{\verb{GdkSpan} is a \link{transparent-type}.}

\describe{
\item{\verb{x}}{[integer] x coordinate of the first pixel.}
\item{\verb{y}}{[integer] y coordinate of the first pixel.}
\item{\verb{width}}{[integer] number of pixels in the span.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{GdkFillRule}}{
The method for determining which pixels are included in a region, when
creating a \code{\link{GdkRegion}} from a polygon.
The fill rule is only relevant for polygons which overlap themselves.

\describe{
\item{\verb{even-odd-rule}}{areas which are overlapped an odd number of times are
included in the region, while areas overlapped an even number of times are not.}
\item{\verb{winding-rule}}{overlapping areas are always included.}
}

}
\item{\verb{GdkOverlapType}}{
Specifies the possible values returned by \code{\link{gdkRegionRectIn}}.

\describe{
\item{\verb{in}}{if the rectangle is inside the \code{\link{GdkRegion}}.}
\item{\verb{out}}{if the rectangle is outside the \code{\link{GdkRegion}}.}
\item{\verb{part}}{if the rectangle is partly inside the \code{\link{GdkRegion}}.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GdkSpanFunc(span, data)}}{
This defines the type of the function passed to
\code{\link{gdkRegionSpansIntersectForeach}}.

\describe{
\item{\code{span}}{a \code{\link{GdkSpan}}.}
\item{\code{data}}{the user data passed to \code{\link{gdkRegionSpansIntersectForeach}}.}
}


}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Points-Rectangles-and-Regions.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
