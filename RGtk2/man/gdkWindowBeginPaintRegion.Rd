\alias{gdkWindowBeginPaintRegion}
\name{gdkWindowBeginPaintRegion}
\title{gdkWindowBeginPaintRegion}
\description{Indicates that you are beginning the process of redrawing \code{region}.
A backing store (offscreen buffer) large enough to contain \code{region}
will be created. The backing store will be initialized with the
background color or background pixmap for \code{window}. Then, all
drawing operations performed on \code{window} will be diverted to the
backing store.  When you call \code{\link{gdkWindowEndPaint}}, the backing
store will be copied to \code{window}, making it visible onscreen. Only
the part of \code{window} contained in \code{region} will be modified; that is,
drawing operations are clipped to \code{region}.}
\usage{gdkWindowBeginPaintRegion(object, region)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{region}}{region you intend to draw to}
}
\details{The net result of all this is to remove flicker, because the user
sees the finished product appear all at once when you call
\code{\link{gdkWindowEndPaint}}. If you draw to \code{window} directly without
calling \code{\link{gdkWindowBeginPaintRegion}}, the user may see flicker
as individual drawing operations are performed in sequence.  The
clipping and background-initializing features of
\code{\link{gdkWindowBeginPaintRegion}} are conveniences for the
programmer, so you can avoid doing that work yourself.
  
When using GTK+, the widget system automatically places calls to
\code{\link{gdkWindowBeginPaintRegion}} and \code{\link{gdkWindowEndPaint}} around
emissions of the expose_event signal. That is, if you're writing an
expose event handler, you can assume that the exposed area in
\code{\link{GdkEventExpose}} has already been cleared to the window background,
is already set as the clip region, and already has a backing store.
Therefore in most cases, application code need not call
\code{\link{gdkWindowBeginPaintRegion}}. (You can disable the automatic
calls around expose events on a widget-by-widget basis by calling
\code{\link{gtkWidgetSetDoubleBuffered}}.)
  
If you call this function multiple times before calling the
matching \code{\link{gdkWindowEndPaint}}, the backing stores are pushed onto
a stack. \code{\link{gdkWindowEndPaint}} copies the topmost backing store
onscreen, subtracts the topmost region from all other regions in
the stack, and pops the stack. All drawing operations affect only
the topmost backing store in the stack. One matching call to
\code{\link{gdkWindowEndPaint}} is required for each call to
\code{\link{gdkWindowBeginPaintRegion}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
