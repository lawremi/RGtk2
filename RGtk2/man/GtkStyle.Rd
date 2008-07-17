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
\code{\link{gtkPaintString}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, string)}\cr
\code{\link{gtkPaintTab}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)}\cr
\code{\link{gtkPaintVline}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, y1, y2, x)}\cr
\code{\link{gtkPaintExpander}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, expander.style)}\cr
\code{\link{gtkPaintLayout}(object, window, state.type, use.text, area = NULL, widget = NULL, detail = NULL, x, y, layout)}\cr
\code{\link{gtkPaintResizeGrip}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, edge, x, y, width, height)}\cr
\code{\link{gtkDrawInsertionCursor}(widget, drawable, area = NULL, location, is.primary, direction, draw.arrow)}\cr
\code{\link{gtkBorderCopy}(object)}\cr
\code{gtkStyle()}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GtkStyle}}
\section{Structures}{\describe{
\item{\code{GtkStyle}}{
\emph{undocumented
}

\describe{
\item{\code{fg}}{[\code{\link{GdkColor}}] }
\item{\code{bg}}{[\code{\link{GdkColor}}] }
\item{\code{light}}{[\code{\link{GdkColor}}] }
\item{\code{dark}}{[\code{\link{GdkColor}}] }
\item{\code{mid}}{[\code{\link{GdkColor}}] }
\item{\code{text}}{[\code{\link{GdkColor}}] }
\item{\code{base}}{[\code{\link{GdkColor}}] }
\item{\code{textAa}}{[\code{\link{GdkColor}}] }
\item{\code{white}}{[\code{\link{GdkColor}}] }
\item{\code{black}}{[\code{\link{GdkColor}}] }
\item{\code{fontDesc}}{[\code{\link{PangoFontDescription}}] }
\item{\code{xthickness}}{[integer] }
\item{\code{ythickness}}{[integer] }
\item{\code{fgGc}}{[\code{\link{GdkGC}}] }
\item{\code{bgGc}}{[\code{\link{GdkGC}}] }
\item{\code{lightGc}}{[\code{\link{GdkGC}}] }
\item{\code{darkGc}}{[\code{\link{GdkGC}}] }
\item{\code{midGc}}{[\code{\link{GdkGC}}] }
\item{\code{textGc}}{[\code{\link{GdkGC}}] }
\item{\code{baseGc}}{[\code{\link{GdkGC}}] }
\item{\code{textAaGc}}{[\code{\link{GdkGC}}] }
\item{\code{whiteGc}}{[\code{\link{GdkGC}}] }
\item{\code{blackGc}}{[\code{\link{GdkGC}}] }
\item{\code{bgPixmap}}{[\code{\link{GdkPixmap}}] }
}

}
\item{\code{GtkBorder}}{
\emph{undocumented
}

}
}}
\section{Convenient Construction}{\code{gtkStyle} is the equivalent of \code{\link{gtkStyleNew}}.}
\section{User Functions}{\describe{\item{\code{GtkRcPropertyParser(pspec, rc.string, property.value)}}{
\emph{undocumented
}

\describe{
\item{\code{pspec}}{[\code{\link{GParamSpec}}] }
\item{\code{rc.string}}{[character] }
\item{\code{property.value}}{[R object] }
}


}}}
\section{Signals}{\describe{
\item{\code{realize(style, user.data)}}{
Emitted when the style has been initialized for a particular
colormap and depth. Connecting to this signal is probably seldom
useful since most of the time applications and widgets only
deal with styles that have been already realized.  

  Since  2.4

\describe{
\item{\code{style}}{[\code{\link{GtkStyle}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{unrealize(style, user.data)}}{
Emitted when the aspects of the style specific to a particular colormap
and depth are being cleaned up. A connection to this signal can be useful
if a widget wants to cache objects like a \code{\link{GdkGC}} as object data on \code{\link{GtkStyle}}.
This signal provides a convenient place to free such cached objects.  

  Since  2.4

\describe{
\item{\code{style}}{[\code{\link{GtkStyle}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkStyle.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
