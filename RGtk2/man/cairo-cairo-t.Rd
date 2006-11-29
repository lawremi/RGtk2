\alias{cairo-cairo-t}
\alias{Cairo}
\alias{cairo}
\alias{CairoAntialias}
\alias{CairoFillRule}
\alias{CairoLineCap}
\alias{CairoLineJoin}
\alias{CairoOperator}
\name{cairo-cairo-t}
\title{cairo\_t}
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
\code{\link{cairoResetClip}(cr)}\cr
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
\code{cairo(target)}
}
\section{Detailed Description}{    \code{\link{Cairo}} is the main object used when drawing with cairo. To
    draw with cairo, you create a \code{\link{Cairo}}, set the target surface,
    and drawing options for the \code{\link{Cairo}}, create shapes with
    functions like \code{\link{cairoMoveTo}} and \code{\link{cairoLineTo}}, and then
    draw shapes with \code{\link{cairoStroke}} or \code{\link{cairoFill}}.
    
    \code{\link{Cairo}}'s can be pushed to a stack via \code{\link{cairoSave}}.
    They may then safely be changed, without loosing the current state.
    Use \code{\link{cairoRestore}} to restore to the saved state.
  }
\section{Structures}{\describe{\item{\code{Cairo}}{
A \code{\link{Cairo}} contains the current state of the rendering device,
including coordinates of yet to be drawn shapes.  

}}}
\section{Convenient Construction}{\code{cairo} is the equivalent of \code{\link{cairoCreate}}.}
\section{Enums and Flags}{\describe{
\item{\code{CairoAntialias}}{
Specifies the type of antialiasing to do when rendering text or shapes.  

\describe{
\item{\code{default}}{ Use the default antialiasing for
  the subsystem and target device}
\item{\code{none}}{ Use a bilevel alpha mask}
\item{\code{gray}}{ Perform single-color antialiasing (using
 shades of gray for black text on a white background, for example).}
\item{\code{subpixel}}{ Perform antialiasing by taking
 advantage of the order of subpixel elements on devices
 such as LCD panels}
}

}
\item{\code{CairoFillRule}}{
\code{\link{CairoFillRule}} is used to select how paths are filled. For both
fill rules, whether or not a point is included in the fill is
determined by taking a ray from that point to infinity and looking
at intersections with the path. The ray can be in any direction,
as long as it doesn't pass through the end point of a segment
or have a tricky intersection such as intersecting tangent to the path.
(Note that filling is not actually implemented in this way. This
is just a description of the rule that is applied.)
  
New entries may be added in future versions.  

\describe{
\item{\code{winding}}{ If the path crosses the ray from
left-to-right, counts +1. If the path crosses the ray
from right to left, counts -1. (Left and right are determined
from the perspective of looking along the ray from the starting
point.) If the total count is non-zero, the point will be filled.}
\item{\code{even-odd}}{ Counts the total number of
intersections, without regard to the orientation of the contour. If
the total number of intersections is odd, the point will be
filled.}
}

}
\item{\code{CairoLineCap}}{
enumeration for style of line-endings  

\describe{
\item{\code{butt}}{ start(stop) the line exactly at the start(end) point}
\item{\code{round}}{ use a round ending, the center of the circle is the end point}
\item{\code{square}}{ use squared ending, the center of the square is the end point}
}

}
\item{\code{CairoLineJoin}}{
\emph{undocumented
}

\describe{
\item{\code{miter}}{\emph{undocumented
}}
\item{\code{round}}{\emph{undocumented
}}
\item{\code{bevel}}{\emph{undocumented
}}
}

}
\item{\code{CairoOperator}}{
\emph{undocumented
}

\describe{
\item{\code{clear}}{\emph{undocumented
}}
\item{\code{source}}{\emph{undocumented
}}
\item{\code{over}}{\emph{undocumented
}}
\item{\code{in}}{\emph{undocumented
}}
\item{\code{out}}{\emph{undocumented
}}
\item{\code{atop}}{\emph{undocumented
}}
\item{\code{dest}}{\emph{undocumented
}}
\item{\code{dest-over}}{\emph{undocumented
}}
\item{\code{dest-in}}{\emph{undocumented
}}
\item{\code{dest-out}}{\emph{undocumented
}}
\item{\code{dest-atop}}{\emph{undocumented
}}
\item{\code{xor}}{\emph{undocumented
}}
\item{\code{add}}{\emph{undocumented
}}
\item{\code{saturate}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://www.cairographics.org/manual/cairo-cairo-t.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
