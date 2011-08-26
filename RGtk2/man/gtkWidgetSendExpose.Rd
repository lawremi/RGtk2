\alias{gtkWidgetSendExpose}
\name{gtkWidgetSendExpose}
\title{gtkWidgetSendExpose}
\description{Very rarely-used function. This function is used to emit
an expose event signals on a widget. This function is not
normally used directly. The only time it is used is when
propagating an expose event to a child \code{NO_WINDOW} widget, and
that is normally done using \code{\link{gtkContainerPropagateExpose}}.}
\usage{gtkWidgetSendExpose(object, event)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{event}}{a expose \code{\link{GdkEvent}}}
}
\details{If you want to force an area of a window to be redrawn, 
use \code{\link{gdkWindowInvalidateRect}} or \code{\link{gdkWindowInvalidateRegion}}.
To cause the redraw to be done immediately, follow that call
with a call to \code{\link{gdkWindowProcessUpdates}}.}
\value{[integer] return from the event signal emission (\code{TRUE} if
the event was handled)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
