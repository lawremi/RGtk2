\alias{gtkPropagateEvent}
\name{gtkPropagateEvent}
\title{gtkPropagateEvent}
\description{Sends an event to a widget, propagating the event to parent widgets
if the event remains unhandled. Events received by GTK+ from GDK
normally begin in \code{\link{gtkMainDoEvent}}. Depending on the type of
event, existence of modal dialogs, grabs, etc., the event may be
propagated; if so, this function is used. \code{\link{gtkPropagateEvent}}
calls \code{\link{gtkWidgetEvent}} on each widget it decides to send the
event to.  So \code{\link{gtkWidgetEvent}} is the lowest-level function; it
simply emits the "event" and possibly an event-specific signal on a
widget.  \code{\link{gtkPropagateEvent}} is a bit higher-level, and
\code{\link{gtkMainDoEvent}} is the highest level.}
\usage{gtkPropagateEvent(object, event)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{event}}{an event}
}
\details{All that said, you most likely don't want to use any of these
functions; synthesizing events is rarely needed. Consider asking on
the mailing list for better ways to achieve your goals. For
example, use \code{\link{gdkWindowInvalidateRect}} or
\code{\link{gtkWidgetQueueDraw}} instead of making up expose events.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
