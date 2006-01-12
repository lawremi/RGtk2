\alias{gdk-Graphics-Contexts}
\alias{GdkGC}
\alias{GdkGCValues}
\alias{gdkGC}
\alias{GdkGCValuesMask}
\alias{GdkFunction}
\alias{GdkFill}
\alias{GdkSubwindowMode}
\alias{GdkLineStyle}
\alias{GdkCapStyle}
\alias{GdkJoinStyle}
\name{gdk-Graphics-Contexts}
\title{Graphics Contexts}
\description{Objects to encapsulate drawing properties}
\usage{
\link{gdkGCNew}(drawable)
\link{gdkGCNewWithValues}(object, values)
\link{gdkGCGetScreen}(object)
\link{gdkGCSetValues}(object, values)
\link{gdkGCGetValues}(object)
\link{gdkGCSetForeground}(object, color)
\link{gdkGCSetBackground}(object, color)
\link{gdkGCSetRgbFgColor}(object, color)
\link{gdkGCSetRgbBgColor}(object, color)
\link{gdkGCSetFont}(object, font)
\link{gdkGCSetFunction}(object, fun)
\link{gdkGCSetFill}(object, fill)
\link{gdkGCSetTile}(object, tile)
\link{gdkGCSetStipple}(object, stipple)
\link{gdkGCSetTsOrigin}(object, x, y)
\link{gdkGCSetClipOrigin}(object, x, y)
\link{gdkGCSetClipMask}(object, mask)
\link{gdkGCSetClipRectangle}(object, rectangle)
\link{gdkGCSetClipRegion}(object, region)
\link{gdkGCSetSubwindow}(object, mode)
\link{gdkGCSetExposures}(object, exposures)
\link{gdkGCSetLineAttributes}(object, line.width, line.style, cap.style, join.style)
\link{gdkGCSetDashes}(object, dash.list)
\link{gdkGCCopy}(object, src.gc)
\link{gdkGCSetColormap}(object, colormap)
\link{gdkGCGetColormap}(object)
\link{gdkGCOffset}(object, x.offset, y.offset)
gdkGC(drawable)
}
\details{All drawing operations in GDK take a 
\dfn{graphics context} (GC) argument. 
A graphics context encapsulates information about
the way things are drawn, such as the foreground
color or line width. By using graphics contexts, 
the number of arguments to each drawing call is
greatly reduced, and communication overhead is
minimized, since identical arguments do not need
to be passed repeatedly.
  
Most values of a graphics context can be set at
creation time by using \code{\link{gdkGCNewWithValues}},
or can be set one-by-one using functions such
as \code{\link{gdkGCSetForeground}}. A few of the values
in the GC, such as the dash pattern, can only
be set by the latter method.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GdkGC}}
\section{Structures}{\describe{
\item{\code{GdkGC}}{
The \code{\link{GdkGC}} structure represents a graphics context.
It is an opaque structure with no user-visible
elements.

}
\item{\code{GdkGCValues}}{
The \code{\link{GdkGCValues}} structure holds a set of values used
to create or modify a graphics context.
\strong{\code{GdkGCValues} is a \link{transparent-type}.}

\describe{
\item{\code{foreground}}{[\code{\link{GdkColor}}] the foreground color. Note that \code{\link{gdkGCGetValues}}
  only sets the pixel value.}
\item{\code{background}}{[\code{\link{GdkColor}}] the background color. Note that \code{\link{gdkGCGetValues}}
  only sets the pixel value.}
\item{\code{font}}{[\code{\link{GdkFont}}] the default font.}
\item{\code{function}}{[\code{\link{GdkFunction}}] the bitwise operation used when drawing.}
\item{\code{fill}}{[\code{\link{GdkFill}}] the fill style.}
\item{\code{tile}}{[\code{\link{GdkPixmap}}] the tile pixmap.}
\item{\code{stipple}}{[\code{\link{GdkPixmap}}] the stipple bitmap.}
\item{\code{clip_mask}}{[\code{\link{GdkPixmap}}] the clip mask bitmap.}
\item{\code{subwindow_mode}}{[\code{\link{GdkSubwindowMode}}] the subwindow mode.}
\item{\code{ts_x_origin}}{[integer] the x origin of the tile or stipple.}
\item{\code{ts_y_origin}}{[integer] the y origin of the tile or stipple.}
\item{\code{clip_x_origin}}{[integer] the x origin of the clip mask.}
\item{\code{clip_y_origin}}{[integer] the y origin of the clip mask.}
\item{\code{graphics_exposures}}{[integer] whether graphics exposures are enabled.}
\item{\code{line_width}}{[integer] the line width.}
\item{\code{line_style}}{[\code{\link{GdkLineStyle}}] the way dashed lines are drawn.}
\item{\code{cap_style}}{[\code{\link{GdkCapStyle}}] the way the ends of lines are drawn.}
\item{\code{join_style}}{[\code{\link{GdkJoinStyle}}] the way joins between lines are drawn.}
}

}
}}
\section{Convenient Construction}{\code{gdkGC} is the equivalent of \code{\link{gdkGCNew}}.}
\section{Enums and Flags}{\describe{
\item{\code{enum GdkGCValuesMask}}{
A set of bit flags used to indicate which fields
\code{\link{GdkGCValues}} structure are set.

\describe{
\item{\code{GDK_GC_FOREGROUND (foreground)}}{the \code{foreground} is set.}
\item{\code{GDK_GC_BACKGROUND (background)}}{the \code{background} is set.}
\item{\code{GDK_GC_FONT (font)}}{the \code{font} is set.}
\item{\code{GDK_GC_FUNCTION (function)}}{the \code{function} is set.}
\item{\code{GDK_GC_FILL (fill)}}{the \code{fill} is set.}
\item{\code{GDK_GC_TILE (tile)}}{the \code{tile} is set.}
\item{\code{GDK_GC_STIPPLE (stipple)}}{the \code{stipple} is set.}
\item{\code{GDK_GC_CLIP_MASK (clip-mask)}}{the \code{clip.mask} is set.}
\item{\code{GDK_GC_SUBWINDOW (subwindow)}}{the \code{subwindow.mode} is set.}
\item{\code{GDK_GC_TS_X_ORIGIN (ts-x-origin)}}{the \code{ts.x.origin} is set.}
\item{\code{GDK_GC_TS_Y_ORIGIN (ts-y-origin)}}{the \code{ts.y.origin} is set.}
\item{\code{GDK_GC_CLIP_X_ORIGIN (clip-x-origin)}}{the \code{clip.x.origin} is set.}
\item{\code{GDK_GC_CLIP_Y_ORIGIN (clip-y-origin)}}{the \code{clip.y.origin} is set.}
\item{\code{GDK_GC_EXPOSURES (exposures)}}{the \code{graphics.exposures} is set.}
\item{\code{GDK_GC_LINE_WIDTH (line-width)}}{the \code{line.width} is set.}
\item{\code{GDK_GC_LINE_STYLE (line-style)}}{the \code{line.style} is set.}
\item{\code{GDK_GC_CAP_STYLE (cap-style)}}{the \code{cap.style} is set.}
\item{\code{GDK_GC_JOIN_STYLE (join-style)}}{the \code{join.style} is set.}
}

}
\item{\code{enum GdkFunction}}{
Determines how the bit values for the source pixels are combined with
the bit values for destination pixels to produce the final result. The
sixteen values here correspond to the 16 different possible 2x2 truth
tables.  Only a couple of these values are usually useful; for colored
images, only \code{GDK_COPY}, \code{GDK_XOR} and \code{GDK_INVERT} are generally
useful. For bitmaps, \code{GDK_AND} and \code{GDK_OR} are also useful.

\describe{
\item{\code{GDK_COPY (copy)}}{\emph{undocumented
}}
\item{\code{GDK_INVERT (invert)}}{\emph{undocumented
}}
\item{\code{GDK_XOR (xor)}}{\emph{undocumented
}}
\item{\code{GDK_CLEAR (clear)}}{\emph{undocumented
}}
\item{\code{GDK_AND (and)}}{\emph{undocumented
}}
\item{\code{GDK_AND_REVERSE (and-reverse)}}{\emph{undocumented
}}
\item{\code{GDK_AND_INVERT (and-invert)}}{\emph{undocumented
}}
\item{\code{GDK_NOOP (noop)}}{\emph{undocumented
}}
\item{\code{GDK_OR (or)}}{\emph{undocumented
}}
\item{\code{GDK_EQUIV (equiv)}}{\emph{undocumented
}}
\item{\code{GDK_OR_REVERSE (or-reverse)}}{\emph{undocumented
}}
\item{\code{GDK_COPY_INVERT (copy-invert)}}{\emph{undocumented
}}
\item{\code{GDK_OR_INVERT (or-invert)}}{\emph{undocumented
}}
\item{\code{GDK_NAND (nand)}}{\emph{undocumented
}}
\item{\code{GDK_NOR (nor)}}{\emph{undocumented
}}
\item{\code{GDK_SET (set)}}{\emph{undocumented
}}
}

}
\item{\code{enum GdkFill}}{
Determines how primitives are drawn.

\describe{
\item{\code{GDK_SOLID (solid)}}{draw with the foreground color.}
\item{\code{GDK_TILED (tiled)}}{draw with a tiled pixmap.}
\item{\code{GDK_STIPPLED (stippled)}}{draw using the stipple bitmap. Pixels corresponding
  to bits in the stipple bitmap that are set will be drawn in the
  foreground color; pixels corresponding to bits that are
  not set will be left untouched.}
\item{\code{GDK_OPAQUE_STIPPLED (opaque-stippled)}}{draw using the stipple bitmap. Pixels corresponding
  to bits in the stipple bitmap that are set will be drawn in the
  foreground color; pixels corresponding to bits that are
  not set will be drawn with the background color.}
}

}
\item{\code{enum GdkSubwindowMode}}{
Determines how drawing onto a window will affect child
windows of that window. 

\describe{
\item{\code{GDK_CLIP_BY_CHILDREN (clip-by-children)}}{only draw onto the window itself.}
\item{\code{GDK_INCLUDE_INFERIORS (include-inferiors)}}{draw onto the window and child windows.}
}

}
\item{\code{enum GdkLineStyle}}{
Determines how lines are drawn.

\describe{
\item{\code{GDK_LINE_SOLID (solid)}}{lines are drawn solid.}
\item{\code{GDK_LINE_ON_OFF_DASH (on-off-dash)}}{even segments are drawn; odd segments are not drawn.}
\item{\code{GDK_LINE_DOUBLE_DASH (double-dash)}}{even segments are normally. Odd segments are drawn
  in the background color if the fill style is \code{GDK_SOLID}, or in the background
  color masked by the stipple if the fill style is \code{GDK_STIPPLED}.}
}

}
\item{\code{enum GdkCapStyle}}{
Determines how the end of lines are drawn.

\describe{
\item{\code{GDK_CAP_NOT_LAST (not-last)}}{the same as \code{GDK_CAP_BUTT} for lines of non-zero width.
       for zero width lines, the final point on the line will not be drawn.}
\item{\code{GDK_CAP_BUTT (butt)}}{the ends of the lines are drawn squared off and extending
       to the coordinates of the end point.}
\item{\code{GDK_CAP_ROUND (round)}}{the ends of the lines are drawn as semicircles with the
       diameter equal to the line width and centered at the end point.}
\item{\code{GDK_CAP_PROJECTING (projecting)}}{the ends of the lines are drawn squared off and extending
       half the width of the line beyond the end point.}
}

}
\item{\code{enum GdkJoinStyle}}{
Determines how the joins between segments of a polygon are drawn.

\describe{
\item{\code{GDK_JOIN_MITER (miter)}}{the sides of each line are extended to meet at an angle.}
\item{\code{GDK_JOIN_ROUND (round)}}{the sides of the two lines are joined by a circular arc.}
\item{\code{GDK_JOIN_BEVEL (bevel)}}{the sides of the two lines are joined by a straight line which
       makes an equal angle with each line.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Graphics-Contexts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
