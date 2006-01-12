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
\usage{
\link{gdkRectangleIntersect}(src1, src2)
\link{gdkRectangleUnion}(src1, src2)
\link{gdkRegionNew}()
\link{gdkRegionPolygon}(points, fill.rule)
\link{gdkRegionCopy}(object)
\link{gdkRegionRectangle}(rectangle)
\link{gdkRegionGetClipbox}(object)
\link{gdkRegionGetRectangles}(object)
\link{gdkRegionEmpty}(object)
\link{gdkRegionEqual}(object, region2)
\link{gdkRegionPointIn}(object, x, y)
\link{gdkRegionRectIn}(object, rect)
\link{gdkRegionOffset}(object, dx, dy)
\link{gdkRegionShrink}(object, dx, dy)
\link{gdkRegionUnionWithRect}(object, rect)
\link{gdkRegionIntersect}(object, source2)
\link{gdkRegionUnion}(object, source2)
\link{gdkRegionSubtract}(object, source2)
\link{gdkRegionXor}(object, source2)
\link{gdkRegionSpansIntersectForeach}(object, spans, sorted, fun, data)
}
\details{GDK provides the \code{\link{GdkPoint}}, \code{\link{GdkRectangle}}, \code{\link{GdkRegion}} and \code{\link{GdkSpan}} data types
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
\item{\code{GdkPoint}}{
Defines the x and y coordinates of a point.
\strong{\code{GdkPoint} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer] the x coordinate of the point.}
\item{\code{y}}{[integer] the y coordinate of the point.}
}

}
\item{\code{GdkRectangle}}{
Defines the position and size of a rectangle.
\strong{\code{GdkRectangle} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer] the x coordinate of the left edge of the rectangle.}
\item{\code{y}}{[integer] the y coordinate of the top of the rectangle.}
\item{\code{width}}{[integer] the width of the rectangle.}
\item{\code{height}}{[integer] the height of the rectangle.}
}

}
\item{\code{GdkRegion}}{
A GdkRegion represents a set of pixels on the screen.
The only user-visible field of the structure is the user_data member, which
can be used to attach arbitrary data to the \code{\link{GdkRegion}}.

}
\item{\code{GdkSpan}}{
A GdkSpan represents a horizontal line of pixels starting
at the pixel with coordinates \code{x}, \code{y} and ending before \code{x} + \code{width}, \code{y}.
\strong{\code{GdkSpan} is a \link{transparent-type}.}

\describe{
\item{\code{x}}{[integer] x coordinate of the first pixel.}
\item{\code{y}}{[integer] y coordinate of the first pixel.}
\item{\code{width}}{[integer] number of pixels in the span.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\code{enum GdkFillRule}}{
The method for determining which pixels are included in a region, when
creating a \code{\link{GdkRegion}} from a polygon.
The fill rule is only relevant for polygons which overlap themselves.

\describe{
\item{\code{GDK_EVEN_ODD_RULE (even-odd-rule)}}{areas which are overlapped an odd number of times are
included in the region, while areas overlapped an even number of times are not.}
\item{\code{GDK_WINDING_RULE (winding-rule)}}{overlapping areas are always included.}
}

}
\item{\code{enum GdkOverlapType}}{
Specifies the possible values returned by \code{\link{gdkRegionRectIn}}.

\describe{
\item{\code{GDK_OVERLAP_RECTANGLE_IN (in)}}{if the rectangle is inside the \code{\link{GdkRegion}}.}
\item{\code{GDK_OVERLAP_RECTANGLE_OUT (out)}}{if the rectangle is outside the \code{\link{GdkRegion}}.}
\item{\code{GDK_OVERLAP_RECTANGLE_PART (part)}}{if the rectangle is partly inside the \code{\link{GdkRegion}}.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GdkSpanFunc(span, data)}}{
This defines the type of the function passed to 
\code{\link{gdkRegionSpansIntersectForeach}}. 

\describe{
\item{\code{span}}{[\code{\link{GdkSpan}}] a \code{\link{GdkSpan}}.}
\item{\code{data}}{[R object] the user data passed to \code{\link{gdkRegionSpansIntersectForeach}}.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Points-Rectangles-and-Regions.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
