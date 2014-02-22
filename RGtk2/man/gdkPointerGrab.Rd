\alias{gdkPointerGrab}
\name{gdkPointerGrab}
\title{gdkPointerGrab}
\description{Grabs the pointer (usually a mouse) so that all events are passed to this
application until the pointer is ungrabbed with \code{\link{gdkPointerUngrab}}, or
the grab window becomes unviewable.
This overrides any previous pointer grab by this client.}
\usage{gdkPointerGrab(window, owner.events = FALSE, event.mask = 0, 
    confine.to = NULL, cursor = NULL, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{window}}{the \code{\link{GdkWindow}} which will own the grab (the grab window).}
\item{\verb{owner.events}}{if \code{FALSE} then all pointer events are reported with respect to
\code{window} and are only reported if selected by \code{event.mask}. If \code{TRUE} then pointer
events for this application are reported as normal, but pointer events outside
this application are reported with respect to \code{window} and only if selected by
\code{event.mask}. In either mode, unreported events are discarded.}
\item{\verb{event.mask}}{specifies the event mask, which is used in accordance with
\code{owner.events}. Note that only pointer events (i.e. button and motion events)
may be selected.}
\item{\verb{confine.to}}{If non-\code{NULL}, the pointer will be confined to this
window during the grab. If the pointer is outside \code{confine.to}, it will
automatically be moved to the closest edge of \code{confine.to} and enter
and leave events will be generated as necessary.}
\item{\verb{cursor}}{the cursor to display while the grab is active. If this is \code{NULL} then
the normal cursors are used for \code{window} and its descendants, and the cursor
for \code{window} is used for all other windows.}
\item{\verb{time}}{the timestamp of the event which led to this pointer grab. This usually
comes from a \code{\link{GdkEventButton}} struct, though \code{GDK_CURRENT_TIME} can be used if
the time isn't known.}
}
\details{Pointer grabs are used for operations which need complete control over mouse
events, even if the mouse leaves the application.
For example in GTK+ it is used for Drag and Drop, for dragging the handle in
the \code{\link{GtkHPaned}} and \code{\link{GtkVPaned}} widgets, and for resizing columns in \code{\link{GtkCList}}
widgets.
  
Note that if the event mask of an X window has selected both button press and
button release events, then a button press event will cause an automatic
pointer grab until the button is released.
X does this automatically since most applications expect to receive button
press and release events in pairs.
It is equivalent to a pointer grab on the window with \code{owner.events} set to
\code{TRUE}.
  
If you set up anything at the time you take the grab that needs to be cleaned
up when the grab ends, you should handle the \code{\link{GdkEventGrabBroken}} events that
are emitted when the grab ends unvoluntarily.}
\value{[\code{\link{GdkGrabStatus}}] \code{GDK_GRAB_SUCCESS} if the grab was successful.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
