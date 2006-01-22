\alias{cairo-cairo-t}
\alias{cairo_t}
\alias{cairo_antialias_t}
\alias{cairo_fill_rule_t}
\alias{cairo_line_cap_t}
\alias{cairo_line_join_t}
\alias{cairo_operator_t}
\name{cairo-cairo-t}
\title{cairo_t}
\description{The cairo drawing context}
\section{Methods and Functions}{
\link{cairoCreate}(target)
\link{cairoSave}(cr)
\link{cairoRestore}(cr)
\link{cairoStatus}(cr)
\link{cairoGetTarget}(cr)
\link{cairoSetSourceRgb}(cr, red, green, blue)
\link{cairoSetSourceRgba}(cr, red, green, blue, alpha)
\link{cairoSetSource}(cr, source)
\link{cairoSetSourceSurface}(cr, surface, x, y)
\link{cairoGetSource}(cr)
\link{cairoSetAntialias}(cr, antialias)
\link{cairoGetAntialias}(cr)
\link{cairoSetDash}(cr, dashes, offset)
\link{cairoSetFillRule}(cr, fill.rule)
\link{cairoGetFillRule}(cr)
\link{cairoSetLineCap}(cr, line.cap)
\link{cairoGetLineCap}(cr)
\link{cairoSetLineJoin}(cr, line.join)
\link{cairoGetLineJoin}(cr)
\link{cairoSetLineWidth}(cr, width)
\link{cairoGetLineWidth}(cr)
\link{cairoSetMiterLimit}(cr, limit)
\link{cairoGetMiterLimit}(cr)
\link{cairoSetOperator}(cr, op)
\link{cairoGetOperator}(cr)
\link{cairoSetTolerance}(cr, tolerance)
\link{cairoGetTolerance}(cr)
\link{cairoClip}(cr)
\link{cairoClipPreserve}(cr)
\link{cairoResetClip}(cr)
\link{cairoFill}(cr)
\link{cairoFillPreserve}(cr)
\link{cairoFillExtents}(cr)
\link{cairoInFill}(cr, x, y)
\link{cairoMask}(cr, pattern)
\link{cairoMaskSurface}(cr, surface, surface.x, surface.y)
\link{cairoPaint}(cr)
\link{cairoPaintWithAlpha}(cr, alpha)
\link{cairoStroke}(cr)
\link{cairoStrokePreserve}(cr)
\link{cairoStrokeExtents}(cr)
\link{cairoInStroke}(cr, x, y)
\link{cairoCopyPage}(cr)
\link{cairoShowPage}(cr)
}
\section{Detailed Description}{    \code{\link{cairo_t}} is the main object used when drawing with cairo. To
    draw with cairo, you create a \code{\link{cairo_t}}, set the target surface,
    and drawing options for the \code{\link{cairo_t}}, create shapes with
    functions like \code{\link{cairoMoveTo}} and \code{\link{cairoLineTo}}, and then
    draw shapes with \code{\link{cairoStroke}} or \code{\link{cairoFill}}.
    
    \code{\link{cairo_t}}'s can be pushed to a stack via \code{\link{cairoSave}}.
    They may then safely be changed, without loosing the current state.
    Use \code{\link{cairoRestore}} to restore to the saved state.
  }
\section{Structures}{\describe{\item{\code{cairo_t}}{
A \code{\link{cairo_t}} contains the current state of the rendering device,
including coordinates of yet to be drawn shapes.  

}}}
\section{Enums and Flags}{\describe{
\item{\code{enum cairo_antialias_t}}{
Specifies the type of antialiasing to do when rendering text or shapes.  

\describe{
\item{\code{CAIRO_ANTIALIAS_DEFAULT (default)}}{ Use the default antialiasing for
  the subsystem and target device}
\item{\code{CAIRO_ANTIALIAS_NONE (none)}}{ Use a bilevel alpha mask}
\item{\code{CAIRO_ANTIALIAS_GRAY (gray)}}{ Perform single-color antialiasing (using
 shades of gray for black text on a white background, for example).}
\item{\code{CAIRO_ANTIALIAS_SUBPIXEL (subpixel)}}{ Perform antialiasing by taking
 advantage of the order of subpixel elements on devices
 such as LCD panels}
}

}
\item{\code{enum cairo_fill_rule_t}}{
\code{\link{cairo_fill_rule_t}} is used to select how paths are filled. For both
fill rules, whether or not a point is included in the fill is
determined by taking a ray from that point to infinity and looking
at intersections with the path. The ray can be in any direction,
as long as it doesn't pass through the end point of a segment
or have a tricky intersection such as intersecting tangent to the path.
(Note that filling is not actually implemented in this way. This
is just a description of the rule that is applied.)  

\describe{
\item{\code{CAIRO_FILL_RULE_WINDING (winding)}}{ If the path crosses the ray from
left-to-right, counts +1. If the path crosses the ray
from right to left, counts -1. (Left and right are determined
from the perspective of looking along the ray from the starting
point.) If the total count is non-zero, the point will be filled.}
\item{\code{CAIRO_FILL_RULE_EVEN_ODD (even-odd)}}{ Counts the total number of
intersections, without regard to the orientation of the contour. If
the total number of intersections is odd, the point will be
filled.}
}

}
\item{\code{enum cairo_line_cap_t}}{
enumeration for style of line-endings  

\describe{
\item{\code{CAIRO_LINE_CAP_BUTT (butt)}}{ start(stop) the line exactly at the start(end) point}
\item{\code{CAIRO_LINE_CAP_ROUND (round)}}{ use a round ending, the center of the circle is the end point}
\item{\code{CAIRO_LINE_CAP_SQUARE (square)}}{ use squared ending, the center of the square is the end point}
}

}
\item{\code{enum cairo_line_join_t}}{


\describe{
\item{\code{CAIRO_LINE_JOIN_MITER (miter)}}{\emph{undocumented
}}
\item{\code{CAIRO_LINE_JOIN_ROUND (round)}}{\emph{undocumented
}}
\item{\code{CAIRO_LINE_JOIN_BEVEL (bevel)}}{\emph{undocumented
}}
}

}
\item{\code{enum cairo_operator_t}}{


\describe{
\item{\code{CAIRO_OPERATOR_CLEAR (clear)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_SOURCE (source)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_OVER (over)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_IN (in)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_OUT (out)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_ATOP (atop)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_DEST (dest)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_DEST_OVER (dest-over)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_DEST_IN (dest-in)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_DEST_OUT (dest-out)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_DEST_ATOP (dest-atop)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_XOR (xor)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_ADD (add)}}{\emph{undocumented
}}
\item{\code{CAIRO_OPERATOR_SATURATE (saturate)}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-cairo-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
