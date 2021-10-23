\alias{GtkStyle}
\alias{GtkBorder}
\alias{gtkStyle}
\alias{GtkRcPropertyParser}
\name{GtkStyle}
\title{Styles}
\description{Functions for drawing widget parts}
\section{Methods and Functions}{
\code{\link{gtkStyleNew}()}\cr
\code{\link{gtkStyleCopy}(object)}\cr
\code{\link{gtkStyleAttach}(object, window)}\cr
\code{\link{gtkStyleDetach}(object)}\cr
\code{\link{gtkStyleSetBackground}(object, window, state.type)}\cr
\code{\link{gtkStyleApplyDefaultBackground}(object, window, set.bg, state.type, area = NULL, x, y, width, height)}\cr
\code{\link{gtkStyleLookupColor}(object, color.name)}\cr
\code{\link{gtkStyleLookupIconSet}(object, stock.id)}\cr
\code{\link{gtkStyleRenderIcon}(object, source, direction, state, size, widget = NULL, detail = NULL)}\cr
\code{\link{gtkStyleGetFont}(object)}\cr
\code{\link{gtkStyleSetFont}(object, font)}\cr
\code{\link{gtkStyleGetStyleProperty}(object, widget.type, property.name)}\cr
\code{\link{gtkStyleGet}(object, widget.type, first.property.name, ...)}\cr
\code{\link{gtkDrawHline}(object, window, state.type, x1, x2, y)}\cr
\code{\link{gtkDrawVline}(object, window, state.type, y1, y2, x)}\cr
\code{\link{gtkDrawShadow}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawPolygon}(object, window, state.type, shadow.type, points, fill)}\cr
\code{\link{gtkDrawArrow}(object, window, state.type, shadow.type, arrow.type, fill, x, y, width, height)}\cr
\code{\link{gtkDrawDiamond}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawString}(object, window, state.type, x, y, string)}\cr
\code{\link{gtkDrawBox}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawBoxGap}(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width)}\cr
\code{\link{gtkDrawCheck}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawExtension}(object, window, state.type, shadow.type, x, y, width, height, gap.side)}\cr
\code{\link{gtkDrawFlatBox}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawFocus}(object, window, x, y, width, height)}\cr
\code{\link{gtkDrawHandle}(object, window, state.type, shadow.type, x, y, width, height, orientation)}\cr
\code{\link{gtkDrawOption}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawShadowGap}(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width)}\cr
\code{\link{gtkDrawSlider}(object, window, state.type, shadow.type, x, y, width, height, orientation)}\cr
\code{\link{gtkDrawTab}(object, window, state.type, shadow.type, x, y, width, height)}\cr
\code{\link{gtkDrawExpander}(object, window, state.type, x, y, is.open)}\cr
\code{\link{gtkDrawLayout}(object, window, state.type, use.text, x, y, layout)}\cr
\code{\link{gtkDrawResizeGrip}(object, window, state.type, edge, x, y, width, height)}\cr
\code{\link{gtkPaintArrow}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, arrow.type, fill, x, y, width, height)}\cr
\code{\link{gtkPaintBox}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintBoxGap}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width)}\cr
\code{\link{gtkPaintCheck}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintDiamond}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintExtension}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side)}\cr
\code{\link{gtkPaintFlatBox}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintFocus}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintHandle}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)}\cr
\code{\link{gtkPaintHline}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x1, x2, y)}\cr
\code{\link{gtkPaintOption}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintPolygon}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, points, fill)}\cr
\code{\link{gtkPaintShadow}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintShadowGap}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width)}\cr
\code{\link{gtkPaintSlider}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)}\cr
\code{\link{gtkPaintSpinner}(object, window, state.type, area, widget, detail, step, x, y, width, height)}\cr
\code{\link{gtkPaintString}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, string)}\cr
\code{\link{gtkPaintTab}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintVline}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, y1, y2, x)}\cr
\code{\link{gtkPaintExpander}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, expander.style)}\cr
\code{\link{gtkPaintLayout}(object, window, state.type, use.text, area = NULL, widget = NULL, detail = NULL, x, y, layout)}\cr
\code{\link{gtkPaintResizeGrip}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, edge, x, y, width, height)}\cr
\code{\link{gtkDrawInsertionCursor}(widget, drawable, area = NULL, location, is.primary, direction, draw.arrow)}\cr
\code{\link{gtkBorderNew}()}\cr
\code{\link{gtkBorderCopy}(object)}\cr
\code{gtkStyle()}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GtkStyle
GBoxed
   +----GtkBorder
}}
\section{Structures}{\describe{
\item{\verb{GtkStyle}}{
\emph{undocumented
}

\describe{
\item{\verb{fg}}{[\code{\link{GdkColor}}] }
\item{\verb{bg}}{[\code{\link{GdkColor}}] }
\item{\verb{light}}{[\code{\link{GdkColor}}] }
\item{\verb{dark}}{[\code{\link{GdkColor}}] }
\item{\verb{mid}}{[\code{\link{GdkColor}}] }
\item{\verb{text}}{[\code{\link{GdkColor}}] }
\item{\verb{base}}{[\code{\link{GdkColor}}] }
\item{\verb{textAa}}{[\code{\link{GdkColor}}] }
\item{\verb{white}}{[\code{\link{GdkColor}}] }
\item{\verb{black}}{[\code{\link{GdkColor}}] }
\item{\verb{fontDesc}}{[\code{\link{PangoFontDescription}}] }
\item{\verb{xthickness}}{[integer] }
\item{\verb{ythickness}}{[integer] }
\item{\verb{fgGc}}{[\code{\link{GdkGC}}] }
\item{\verb{bgGc}}{[\code{\link{GdkGC}}] }
\item{\verb{lightGc}}{[\code{\link{GdkGC}}] }
\item{\verb{darkGc}}{[\code{\link{GdkGC}}] }
\item{\verb{midGc}}{[\code{\link{GdkGC}}] }
\item{\verb{textGc}}{[\code{\link{GdkGC}}] }
\item{\verb{baseGc}}{[\code{\link{GdkGC}}] }
\item{\verb{textAaGc}}{[\code{\link{GdkGC}}] }
\item{\verb{whiteGc}}{[\code{\link{GdkGC}}] }
\item{\verb{blackGc}}{[\code{\link{GdkGC}}] }
\item{\verb{bgPixmap}}{[\code{\link{GdkPixmap}}] }
}

}
\item{\verb{GtkBorder}}{
A struct that specifies a border around a rectangular area that can
be of different width on each side.

}
}}
\section{Convenient Construction}{\code{gtkStyle} is the equivalent of \code{\link{gtkStyleNew}}.}
\section{User Functions}{\describe{\item{\code{GtkRcPropertyParser()}}{
\emph{undocumented
}




}}}
\section{Signals}{\describe{
\item{\code{realize(style, user.data)}}{
Emitted when the style has been initialized for a particular
colormap and depth. Connecting to this signal is probably seldom
useful since most of the time applications and widgets only
deal with styles that have been already realized.
  Since 2.4

\describe{
\item{\code{style}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unrealize(style, user.data)}}{
Emitted when the aspects of the style specific to a particular colormap
and depth are being cleaned up. A connection to this signal can be useful
if a widget wants to cache objects like a \code{\link{GdkGC}} as object data on \code{\link{GtkStyle}}.
This signal provides a convenient place to free such cached objects.
  Since 2.4

\describe{
\item{\code{style}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkStyle.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
