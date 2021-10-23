\alias{cairo-context}
\alias{Cairo}
\alias{CairoRectangle}
\alias{CairoRectangleList}
\alias{cairo}
\alias{CairoAntialias}
\alias{CairoFillRule}
\alias{CairoLineCap}
\alias{CairoLineJoin}
\alias{CairoOperator}
\name{cairo-context}
\title{cairo_t}
\description{The cairo drawing context}
\section{Methods and Functions}{
\code{\link{cairoCreate}(target)}\cr
\code{\link{cairoStatus}(cr)}\cr
\code{\link{cairoSave}(cr)}\cr
\code{\link{cairoRestore}(cr)}\cr
\code{\link{cairoGetTarget}(cr)}\cr
\code{\link{cairoPushGroup}(cr)}\cr
\code{\link{cairoPushGroupWithContent}(cr, content)}\cr
\code{\link{cairoPopGroup}(cr)}\cr
\code{\link{cairoPopGroupToSource}(cr)}\cr
\code{\link{cairoGetGroupTarget}(cr)}\cr
\code{\link{cairoSetSourceRgb}(cr, red, green, blue)}\cr
\code{\link{cairoSetSourceRgba}(cr, red, green, blue, alpha)}\cr
\code{\link{cairoSetSource}(cr, source)}\cr
\code{\link{cairoSetSourceSurface}(cr, surface, x, y)}\cr
\code{\link{cairoGetSource}(cr)}\cr
\code{\link{cairoSetAntialias}(cr, antialias)}\cr
\code{\link{cairoGetAntialias}(cr)}\cr
\code{\link{cairoSetDash}(cr, dashes, offset)}\cr
\code{\link{cairoGetDashCount}(cr)}\cr
\code{\link{cairoGetDash}(cr)}\cr
\code{\link{cairoSetFillRule}(cr, fill.rule)}\cr
\code{\link{cairoGetFillRule}(cr)}\cr
\code{\link{cairoSetLineCap}(cr, line.cap)}\cr
\code{\link{cairoGetLineCap}(cr)}\cr
\code{\link{cairoSetLineJoin}(cr, line.join)}\cr
\code{\link{cairoGetLineJoin}(cr)}\cr
\code{\link{cairoSetLineWidth}(cr, width)}\cr
\code{\link{cairoGetLineWidth}(cr)}\cr
\code{\link{cairoSetMiterLimit}(cr, limit)}\cr
\code{\link{cairoGetMiterLimit}(cr)}\cr
\code{\link{cairoSetOperator}(cr, op)}\cr
\code{\link{cairoGetOperator}(cr)}\cr
\code{\link{cairoSetTolerance}(cr, tolerance)}\cr
\code{\link{cairoGetTolerance}(cr)}\cr
\code{\link{cairoClip}(cr)}\cr
\code{\link{cairoClipPreserve}(cr)}\cr
\code{\link{cairoClipExtents}(cr)}\cr
\code{\link{cairoResetClip}(cr)}\cr
\code{\link{cairoCopyClipRectangleList}(cr)}\cr
\code{\link{cairoFill}(cr)}\cr
\code{\link{cairoFillPreserve}(cr)}\cr
\code{\link{cairoFillExtents}(cr)}\cr
\code{\link{cairoInFill}(cr, x, y)}\cr
\code{\link{cairoMask}(cr, pattern)}\cr
\code{\link{cairoMaskSurface}(cr, surface, surface.x, surface.y)}\cr
\code{\link{cairoPaint}(cr)}\cr
\code{\link{cairoPaintWithAlpha}(cr, alpha)}\cr
\code{\link{cairoStroke}(cr)}\cr
\code{\link{cairoStrokePreserve}(cr)}\cr
\code{\link{cairoStrokeExtents}(cr)}\cr
\code{\link{cairoInStroke}(cr, x, y)}\cr
\code{\link{cairoCopyPage}(cr)}\cr
\code{\link{cairoShowPage}(cr)}\cr
\code{\link{cairoSetUserData}(cr, key, user.data)}\cr
\code{\link{cairoGetUserData}(cr, key)}\cr
\code{cairo(target)}
}
\section{Detailed Description}{\code{\link{Cairo}} is the main object used when drawing with cairo. To
    draw with cairo, you create a \code{\link{Cairo}}, set the target surface,
    and drawing options for the \code{\link{Cairo}}, create shapes with
    functions like \code{\link{cairoMoveTo}} and \code{\link{cairoLineTo}}, and then
    draw shapes with \code{\link{cairoStroke}} or \code{\link{cairoFill}}.
    \code{\link{Cairo}}'s can be pushed to a stack via \code{\link{cairoSave}}.
    They may then safely be changed, without loosing the current state.
    Use \code{\link{cairoRestore}} to restore to the saved state.
  }
\section{Structures}{\describe{
\item{\verb{Cairo}}{
A \code{\link{Cairo}} contains the current state of the rendering device,
including coordinates of yet to be drawn shapes.
  
Cairo contexts, as \code{\link{Cairo}} objects are named, are central to
cairo and all drawing with cairo is always done to a \code{\link{Cairo}}
object.
  
Memory management of \code{\link{Cairo}} is done with
\code{cairoReference()} and \code{cairoDestroy()}.  

}
\item{\verb{CairoRectangle}}{
A data structure for holding a rectangle.  
  Since 1.4
\strong{\verb{CairoRectangle} is a \link{transparent-type}.}

\describe{
\item{\verb{x}}{[numeric]  X coordinate of the left side of the rectangle}
\item{\verb{y}}{[numeric]  Y coordinate of the the top side of the rectangle}
\item{\verb{width}}{[numeric]  width of the rectangle}
\item{\verb{height}}{[numeric]  height of the rectangle}
}

}
\item{\verb{CairoRectangleList}}{
A data structure for holding a dynamically allocated
array of rectangles.  
  Since 1.4
\strong{\verb{CairoRectangleList} is a \link{transparent-type}.}

\describe{
\item{\code{status}}{[\code{\link{CairoStatus}}]  Error status of the rectangle list}
\item{\code{rectangles}}{[\code{\link{CairoRectangle}}]  list containing the rectangles}
\item{\code{num_rectangles}}{[integer]  Number of rectangles in this list}
}

}
}}
\section{Convenient Construction}{\code{cairo} is the equivalent of \code{\link{cairoCreate}}.}
\section{Enums and Flags}{\describe{
\item{\verb{CairoAntialias}}{
Specifies the type of antialiasing to do when rendering text or shapes.  

\describe{
\item{\verb{default}}{ Use the default antialiasing for
  the subsystem and target device}
\item{\verb{none}}{ Use a bilevel alpha mask}
\item{\verb{gray}}{ Perform single-color antialiasing (using
 shades of gray for black text on a white background, for example).}
\item{\verb{subpixel}}{ Perform antialiasing by taking
 advantage of the order of subpixel elements on devices
 such as LCD panels}
}

}
\item{\verb{CairoFillRule}}{
\code{\link{CairoFillRule}} is used to select how paths are filled. For both
fill rules, whether or not a point is included in the fill is
determined by taking a ray from that point to infinity and looking
at intersections with the path. The ray can be in any direction,
as long as it doesn't pass through the end point of a segment
or have a tricky intersection such as intersecting tangent to the path.
(Note that filling is not actually implemented in this way. This
is just a description of the rule that is applied.)
  
The default fill rule is \code{CAIRO_FILL_RULE_WINDING}.
  
New entries may be added in future versions.  

\describe{
\item{\verb{winding}}{ If the path crosses the ray from
left-to-right, counts +1. If the path crosses the ray
from right to left, counts -1. (Left and right are determined
from the perspective of looking along the ray from the starting
point.) If the total count is non-zero, the point will be filled.}
\item{\verb{even-odd}}{ Counts the total number of
intersections, without regard to the orientation of the contour. If
the total number of intersections is odd, the point will be
filled.}
}

}
\item{\verb{CairoLineCap}}{
Specifies how to render the endpoints of the path when stroking.
  
The default line cap style is \code{CAIRO_LINE_CAP_BUTT}.  

\describe{
\item{\verb{butt}}{ start(stop) the line exactly at the start(end) point}
\item{\verb{round}}{ use a round ending, the center of the circle is the end point}
\item{\verb{square}}{ use squared ending, the center of the square is the end point}
}

}
\item{\verb{CairoLineJoin}}{
Specifies how to render the junction of two lines when stroking.
  
The default line join style is \code{CAIRO_LINE_JOIN_MITER}.  

\describe{
\item{\verb{miter}}{ use a sharp (angled) corner, see
\code{\link{cairoSetMiterLimit}}}
\item{\verb{round}}{ use a rounded join, the center of the circle is the
joint point}
\item{\verb{bevel}}{ use a cut-off join, the join is cut off at half
the line width from the joint point}
}

}
\item{\verb{CairoOperator}}{
\code{\link{CairoOperator}} is used to set the compositing operator for all cairo
drawing operations.
  
The default operator is \code{CAIRO_OPERATOR_OVER}.
  
The operators marked as \dfn{unbounded} modify their
destination even outside of the mask layer (that is, their effect is not
bound by the mask layer).  However, their effect can still be limited by
way of clipping.
  
To keep things simple, the operator descriptions here
document the behavior for when both source and destination are either fully
transparent or fully opaque.  The actual implementation works for
translucent layers too.
For a more detailed explanation of the effects of each operator, including
the mathematical definitions, see
https://cairographics.org/operators/ (\url{https://cairographics.org/operators/}).  

\describe{
\item{\verb{clear}}{ clear destination layer (bounded)}
\item{\verb{source}}{ replace destination layer (bounded)}
\item{\verb{over}}{ draw source layer on top of destination layer
(bounded)}
\item{\verb{in}}{ draw source where there was destination content
(unbounded)}
\item{\verb{out}}{ draw source where there was no destination
content (unbounded)}
\item{\verb{atop}}{ draw source on top of destination content and
only there}
\item{\verb{dest}}{ ignore the source}
\item{\verb{dest-over}}{ draw destination on top of source}
\item{\verb{dest-in}}{ leave destination only where there was
source content (unbounded)}
\item{\verb{dest-out}}{ leave destination only where there was no
source content}
\item{\verb{dest-atop}}{ leave destination on top of source content
and only there (unbounded)}
\item{\verb{xor}}{ source and destination are shown where there is only
one of them}
\item{\verb{add}}{ source and destination layers are accumulated}
\item{\verb{saturate}}{ like over, but assuming source and dest are
disjoint geometries}
}

}
}}
\references{\url{https://www.cairographics.org/manual/cairo-cairo-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
