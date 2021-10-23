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
\section{Methods and Functions}{
\code{\link{gdkGCNew}(drawable)}\cr
\code{\link{gdkGCNewWithValues}(object, values)}\cr
\code{\link{gdkGCGetScreen}(object)}\cr
\code{\link{gdkGCSetValues}(object, values)}\cr
\code{\link{gdkGCGetValues}(object)}\cr
\code{\link{gdkGCSetForeground}(object, color)}\cr
\code{\link{gdkGCSetBackground}(object, color)}\cr
\code{\link{gdkGCSetRgbFgColor}(object, color)}\cr
\code{\link{gdkGCSetRgbBgColor}(object, color)}\cr
\code{\link{gdkGCSetFont}(object, font)}\cr
\code{\link{gdkGCSetFunction}(object, fun)}\cr
\code{\link{gdkGCSetFill}(object, fill)}\cr
\code{\link{gdkGCSetTile}(object, tile)}\cr
\code{\link{gdkGCSetStipple}(object, stipple)}\cr
\code{\link{gdkGCSetTsOrigin}(object, x, y)}\cr
\code{\link{gdkGCSetClipOrigin}(object, x, y)}\cr
\code{\link{gdkGCSetClipMask}(object, mask)}\cr
\code{\link{gdkGCSetClipRectangle}(object, rectangle)}\cr
\code{\link{gdkGCSetClipRegion}(object, region)}\cr
\code{\link{gdkGCSetSubwindow}(object, mode)}\cr
\code{\link{gdkGCSetExposures}(object, exposures)}\cr
\code{\link{gdkGCSetLineAttributes}(object, line.width, line.style, cap.style, join.style)}\cr
\code{\link{gdkGCSetDashes}(object, dash.list)}\cr
\code{\link{gdkGCCopy}(object, src.gc)}\cr
\code{\link{gdkGCSetColormap}(object, colormap)}\cr
\code{\link{gdkGCGetColormap}(object)}\cr
\code{\link{gdkGCOffset}(object, x.offset, y.offset)}\cr
\code{gdkGC(drawable)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GdkGC}}
\section{Detailed Description}{All drawing operations in GDK take a
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
\section{Structures}{\describe{
\item{\verb{GdkGC}}{
The \code{\link{GdkGC}} structure represents a graphics context.
It is an opaque structure with no user-visible
elements.

}
\item{\verb{GdkGCValues}}{
The \code{\link{GdkGCValues}} structure holds a set of values used
to create or modify a graphics context.
\strong{\verb{GdkGCValues} is a \link{transparent-type}.}

\describe{
\item{\code{foreground}}{the foreground color. Note that \code{\link{gdkGCGetValues}}
only sets the pixel value.}
\item{\code{background}}{the background color. Note that \code{\link{gdkGCGetValues}}
only sets the pixel value.}
\item{\code{font}}{the default font.}
\item{\code{function}}{the bitwise operation used when drawing.}
\item{\code{fill}}{the fill style.}
\item{\code{tile}}{the tile pixmap.}
\item{\code{stipple}}{the stipple bitmap.}
\item{\code{clip_mask}}{the clip mask bitmap.}
\item{\code{subwindow_mode}}{the subwindow mode.}
\item{\code{ts_x_origin}}{the x origin of the tile or stipple.}
\item{\code{ts_y_origin}}{the y origin of the tile or stipple.}
\item{\code{clip_x_origin}}{the x origin of the clip mask.}
\item{\code{clip_y_origin}}{the y origin of the clip mask.}
\item{\code{graphics_exposures}}{whether graphics exposures are enabled.}
\item{\code{line_width}}{the line width.}
\item{\code{line_style}}{the way dashed lines are drawn.}
\item{\code{cap_style}}{the way the ends of lines are drawn.}
\item{\code{join_style}}{the way joins between lines are drawn.}
}

}
}}
\section{Convenient Construction}{\code{gdkGC} is the equivalent of \code{\link{gdkGCNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GdkGCValuesMask}}{
A set of bit flags used to indicate which fields
\code{\link{GdkGCValues}} structure are set.

\describe{
\item{\verb{foreground}}{the \code{foreground} is set.}
\item{\verb{background}}{the \code{background} is set.}
\item{\verb{font}}{the \code{font} is set.}
\item{\verb{function}}{the \code{function} is set.}
\item{\verb{fill}}{the \code{fill} is set.}
\item{\verb{tile}}{the \code{tile} is set.}
\item{\verb{stipple}}{the \code{stipple} is set.}
\item{\verb{clip-mask}}{the \code{clip.mask} is set.}
\item{\verb{subwindow}}{the \code{subwindow.mode} is set.}
\item{\verb{ts-x-origin}}{the \code{ts.x.origin} is set.}
\item{\verb{ts-y-origin}}{the \code{ts.y.origin} is set.}
\item{\verb{clip-x-origin}}{the \code{clip.x.origin} is set.}
\item{\verb{clip-y-origin}}{the \code{clip.y.origin} is set.}
\item{\verb{exposures}}{the \code{graphics.exposures} is set.}
\item{\verb{line-width}}{the \code{line.width} is set.}
\item{\verb{line-style}}{the \code{line.style} is set.}
\item{\verb{cap-style}}{the \code{cap.style} is set.}
\item{\verb{join-style}}{the \code{join.style} is set.}
}

}
\item{\verb{GdkFunction}}{
Determines how the bit values for the source pixels are combined with
the bit values for destination pixels to produce the final result. The
sixteen values here correspond to the 16 different possible 2x2 truth
tables.  Only a couple of these values are usually useful; for colored
images, only \code{GDK_COPY}, \code{GDK_XOR} and \code{GDK_INVERT} are generally
useful. For bitmaps, \code{GDK_AND} and \code{GDK_OR} are also useful.

\describe{
\item{\verb{copy}}{\code{dst = src}}
\item{\verb{invert}}{\code{dst = NOT dst}}
\item{\verb{xor}}{\code{dst = src XOR dst}}
\item{\verb{clear}}{\code{dst = 0}}
\item{\verb{and}}{\code{dst = dst AND src}}
\item{\verb{and-reverse}}{\code{dst = src AND (NOT dst)}}
\item{\verb{and-invert}}{\code{dst = (NOT src) AND dst}}
\item{\verb{noop}}{\code{dst = dst}}
\item{\verb{or}}{\code{dst = src OR dst}}
\item{\verb{equiv}}{\code{dst = (NOT src) XOR dst}}
\item{\verb{or-reverse}}{\code{dst = src OR (NOT dst)}}
\item{\verb{copy-invert}}{\code{dst = NOT src}}
\item{\verb{or-invert}}{\code{dst = (NOT src) OR dst}}
\item{\verb{nand}}{\code{dst = (NOT src) OR (NOT dst)}}
\item{\verb{nor}}{\code{dst = (NOT src) AND (NOT dst)}}
\item{\verb{set}}{\code{dst = 1}}
}

}
\item{\verb{GdkFill}}{
Determines how primitives are drawn.

\describe{
\item{\verb{solid}}{draw with the foreground color.}
\item{\verb{tiled}}{draw with a tiled pixmap.}
\item{\verb{stippled}}{draw using the stipple bitmap. Pixels corresponding
  to bits in the stipple bitmap that are set will be drawn in the
  foreground color; pixels corresponding to bits that are
  not set will be left untouched.}
\item{\verb{opaque-stippled}}{draw using the stipple bitmap. Pixels corresponding
  to bits in the stipple bitmap that are set will be drawn in the
  foreground color; pixels corresponding to bits that are
  not set will be drawn with the background color.}
}

}
\item{\verb{GdkSubwindowMode}}{
Determines how drawing onto a window will affect child
windows of that window.

\describe{
\item{\verb{clip-by-children}}{only draw onto the window itself.}
\item{\verb{include-inferiors}}{draw onto the window and child windows.}
}

}
\item{\verb{GdkLineStyle}}{
Determines how lines are drawn.

\describe{
\item{\verb{solid}}{lines are drawn solid.}
\item{\verb{on-off-dash}}{even segments are drawn; odd segments are not drawn.}
\item{\verb{double-dash}}{even segments are normally. Odd segments are drawn
  in the background color if the fill style is \code{GDK_SOLID}, or in the background
  color masked by the stipple if the fill style is \code{GDK_STIPPLED}.}
}

}
\item{\verb{GdkCapStyle}}{
Determines how the end of lines are drawn.

\describe{
\item{\verb{not-last}}{the same as \code{GDK_CAP_BUTT} for lines of non-zero width.
       for zero width lines, the final point on the line will not be drawn.}
\item{\verb{butt}}{the ends of the lines are drawn squared off and extending
       to the coordinates of the end point.}
\item{\verb{round}}{the ends of the lines are drawn as semicircles with the
       diameter equal to the line width and centered at the end point.}
\item{\verb{projecting}}{the ends of the lines are drawn squared off and extending
       half the width of the line beyond the end point.}
}

}
\item{\verb{GdkJoinStyle}}{
Determines how the joins between segments of a polygon are drawn.

\describe{
\item{\verb{miter}}{the sides of each line are extended to meet at an angle.}
\item{\verb{round}}{the sides of the two lines are joined by a circular arc.}
\item{\verb{bevel}}{the sides of the two lines are joined by a straight line which
       makes an equal angle with each line.}
}

}
}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Graphics-Contexts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
