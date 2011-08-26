\alias{gtkWidgetEvent}
\name{gtkWidgetEvent}
\title{gtkWidgetEvent}
\description{Rarely-used function. This function is used to emit
the event signals on a widget (those signals should never
be emitted without using this function to do so).
If you want to synthesize an event though, don't use this function;
instead, use \code{\link{gtkMainDoEvent}} so the event will behave as if
it were in the event queue. Don't synthesize expose events; instead,
use \code{\link{gdkWindowInvalidateRect}} to invalidate a region of the
window.}
\usage{gtkWidgetEvent(object, event)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{event}}{a \code{\link{GdkEvent}}}
}
\value{[logical] return from the event signal emission (\code{TRUE} if
the event was handled)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
