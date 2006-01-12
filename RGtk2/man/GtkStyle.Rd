\alias{GtkStyle}
\alias{GtkBorder}
\alias{gtkStyle}
\alias{GtkRcPropertyParser}
\name{GtkStyle}
\title{Styles}
\description{Functions for drawing widget parts}
\usage{
\link{gtkStyleNew}()
\link{gtkStyleCopy}(object)
\link{gtkStyleAttach}(object, window)
\link{gtkStyleDetach}(object)
\link{gtkStyleSetBackground}(object, window, state.type)
\link{gtkStyleApplyDefaultBackground}(object, window, set.bg, state.type, area = NULL, x, y, width, height)
\link{gtkStyleLookupIconSet}(object, stock.id)
\link{gtkStyleRenderIcon}(object, source, direction, state, size, widget = NULL, detail = NULL)
\link{gtkStyleGetFont}(object)
\link{gtkStyleSetFont}(object, font)
\link{gtkDrawHline}(object, window, state.type, x1, x2, y)
\link{gtkDrawVline}(object, window, state.type, y1, y2, x)
\link{gtkDrawShadow}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawPolygon}(object, window, state.type, shadow.type, points, fill)
\link{gtkDrawArrow}(object, window, state.type, shadow.type, arrow.type, fill, x, y, width, height)
\link{gtkDrawDiamond}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawString}(object, window, state.type, x, y, string)
\link{gtkDrawBox}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawBoxGap}(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width)
\link{gtkDrawCheck}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawExtension}(object, window, state.type, shadow.type, x, y, width, height, gap.side)
\link{gtkDrawFlatBox}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawFocus}(object, window, x, y, width, height)
\link{gtkDrawHandle}(object, window, state.type, shadow.type, x, y, width, height, orientation)
\link{gtkDrawOption}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawShadowGap}(object, window, state.type, shadow.type, x, y, width, height, gap.side, gap.x, gap.width)
\link{gtkDrawSlider}(object, window, state.type, shadow.type, x, y, width, height, orientation)
\link{gtkDrawTab}(object, window, state.type, shadow.type, x, y, width, height)
\link{gtkDrawExpander}(object, window, state.type, x, y, is.open)
\link{gtkDrawLayout}(object, window, state.type, use.text, x, y, layout)
\link{gtkDrawResizeGrip}(object, window, state.type, edge, x, y, width, height)
\link{gtkPaintArrow}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, arrow.type, fill, x, y, width, height)
\link{gtkPaintBox}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintBoxGap}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width)
\link{gtkPaintCheck}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintDiamond}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintExtension}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side)
\link{gtkPaintFlatBox}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintFocus}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintHandle}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)
\link{gtkPaintHline}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x1, x2, y)
\link{gtkPaintOption}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintPolygon}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, points, fill)
\link{gtkPaintShadow}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintShadowGap}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, gap.side, gap.x, gap.width)
\link{gtkPaintSlider}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height, orientation)
\link{gtkPaintString}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, string)
\link{gtkPaintTab}(object, window, state.type, shadow.type, area = NULL, widget = NULL, detail = NULL, x, y, width, height)
\link{gtkPaintVline}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, y1, y2, x)
\link{gtkPaintExpander}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, x, y, expander.style)
\link{gtkPaintLayout}(object, window, state.type, use.text, area = NULL, widget = NULL, detail = NULL, x, y, layout)
\link{gtkPaintResizeGrip}(object, window, state.type, area = NULL, widget = NULL, detail = NULL, edge, x, y, width, height)
\link{gtkDrawInsertionCursor}(widget, drawable, area = NULL, location, is.primary, direction, draw.arrow)
\link{gtkBorderCopy}(object)
gtkStyle()
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkStyle}}
\section{Structures}{\describe{
\item{\code{GtkStyle}}{


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
\item{\code{GtkBorder}}{\emph{undocumented
}}
}}
\section{Convenient Construction}{\code{gtkStyle} is the equivalent of \code{\link{gtkStyleNew}}.}
\section{User Functions}{\describe{\item{\code{GtkRcPropertyParser(pspec, rc.string, property.value)}}{


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
