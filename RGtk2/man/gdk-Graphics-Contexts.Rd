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
\section{Hierarchy}{\preformatted{  \link{GObject}
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
\item{\code{GdkGCValuesMask}}{
A set of bit flags used to indicate which fields
\code{\link{GdkGCValues}} structure are set.

\describe{
\item{\code{foreground}}{the \code{foreground} is set.}
\item{\code{background}}{the \code{background} is set.}
\item{\code{font}}{the \code{font} is set.}
\item{\code{function}}{the \code{function} is set.}
\item{\code{fill}}{the \code{fill} is set.}
\item{\code{tile}}{the \code{tile} is set.}
\item{\code{stipple}}{the \code{stipple} is set.}
\item{\code{clip-mask}}{the \code{clip.mask} is set.}
\item{\code{subwindow}}{the \code{subwindow.mode} is set.}
\item{\code{ts-x-origin}}{the \code{ts.x.origin} is set.}
\item{\code{ts-y-origin}}{the \code{ts.y.origin} is set.}
\item{\code{clip-x-origin}}{the \code{clip.x.origin} is set.}
\item{\code{clip-y-origin}}{the \code{clip.y.origin} is set.}
\item{\code{exposures}}{the \code{graphics.exposures} is set.}
\item{\code{line-width}}{the \code{line.width} is set.}
\item{\code{line-style}}{the \code{line.style} is set.}
\item{\code{cap-style}}{the \code{cap.style} is set.}
\item{\code{join-style}}{the \code{join.style} is set.}
}

}
\item{\code{GdkFunction}}{
Determines how the bit values for the source pixels are combined with
the bit values for destination pixels to produce the final result. The
sixteen values here correspond to the 16 different possible 2x2 truth
tables.  Only a couple of these values are usually useful; for colored
images, only \code{GDK_COPY}, \code{GDK_XOR} and \code{GDK_INVERT} are generally
useful. For bitmaps, \code{GDK_AND} and \code{GDK_OR} are also useful.

\describe{
\item{\code{copy}}{\code{dst = src}}
\item{\code{invert}}{\code{dst = NOT dst}}
\item{\code{xor}}{\code{dst = src XOR dst}}
\item{\code{clear}}{\code{dst = 0}}
\item{\code{and}}{\code{dst = dst AND src}}
\item{\code{and-reverse}}{\code{dst = src AND (NOT dst)}}
\item{\code{and-invert}}{\code{dst = (NOT src) AND dst}}
\item{\code{noop}}{\code{dst = dst}}
\item{\code{or}}{\code{dst = src OR dst}}
\item{\code{equiv}}{\code{dst = (NOT src) XOR dst}}
\item{\code{or-reverse}}{\code{dst = src OR (NOT dst)}}
\item{\code{copy-invert}}{\code{dst = NOT src}}
\item{\code{or-invert}}{\code{dst = (NOT src) OR dst}}
\item{\code{nand}}{\code{dst = (NOT src) OR (NOT dst)}}
\item{\code{nor}}{\code{dst = (NOT src) AND (NOT dst)}}
\item{\code{set}}{\code{dst = 1}}
}

}
\item{\code{GdkFill}}{
Determines how primitives are drawn.

\describe{
\item{\code{solid}}{draw with the foreground color.}
\item{\code{tiled}}{draw with a tiled pixmap.}
\item{\code{stippled}}{draw using the stipple bitmap. Pixels corresponding
  to bits in the stipple bitmap that are set will be drawn in the
  foreground color; pixels corresponding to bits that are
  not set will be left untouched.}
\item{\code{opaque-stippled}}{draw using the stipple bitmap. Pixels corresponding
  to bits in the stipple bitmap that are set will be drawn in the
  foreground color; pixels corresponding to bits that are
  not set will be drawn with the background color.}
}

}
\item{\code{GdkSubwindowMode}}{
Determines how drawing onto a window will affect child
windows of that window. 

\describe{
\item{\code{clip-by-children}}{only draw onto the window itself.}
\item{\code{include-inferiors}}{draw onto the window and child windows.}
}

}
\item{\code{GdkLineStyle}}{
Determines how lines are drawn.

\describe{
\item{\code{solid}}{lines are drawn solid.}
\item{\code{on-off-dash}}{even segments are drawn; odd segments are not drawn.}
\item{\code{double-dash}}{even segments are normally. Odd segments are drawn
  in the background color if the fill style is \code{GDK_SOLID}, or in the background
  color masked by the stipple if the fill style is \code{GDK_STIPPLED}.}
}

}
\item{\code{GdkCapStyle}}{
Determines how the end of lines are drawn.

\describe{
\item{\code{not-last}}{the same as \code{GDK_CAP_BUTT} for lines of non-zero width.
       for zero width lines, the final point on the line will not be drawn.}
\item{\code{butt}}{the ends of the lines are drawn squared off and extending
       to the coordinates of the end point.}
\item{\code{round}}{the ends of the lines are drawn as semicircles with the
       diameter equal to the line width and centered at the end point.}
\item{\code{projecting}}{the ends of the lines are drawn squared off and extending
       half the width of the line beyond the end point.}
}

}
\item{\code{GdkJoinStyle}}{
Determines how the joins between segments of a polygon are drawn.

\describe{
\item{\code{miter}}{the sides of each line are extended to meet at an angle.}
\item{\code{round}}{the sides of the two lines are joined by a circular arc.}
\item{\code{bevel}}{the sides of the two lines are joined by a straight line which
       makes an equal angle with each line.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Graphics-Contexts.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
