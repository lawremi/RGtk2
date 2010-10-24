\alias{gdkKeyboardGrab}
\name{gdkKeyboardGrab}
\title{gdkKeyboardGrab}
\description{Grabs the keyboard so that all events are passed to this
application until the keyboard is ungrabbed with \code{\link{gdkKeyboardUngrab}}.
This overrides any previous keyboard grab by this client.}
\usage{gdkKeyboardGrab(window, owner.events = FALSE, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{window}}{the \code{\link{GdkWindow}} which will own the grab (the grab window).}
\item{\verb{owner.events}}{if \code{FALSE} then all keyboard events are reported with respect to
\code{window}. If \code{TRUE} then keyboard events for this application are reported as
normal, but keyboard events outside this application are reported with respect
to \code{window}. Both key press and key release events are always reported,
independant of the event mask set by the application.}
\item{\verb{time}}{a timestamp from a \code{\link{GdkEvent}}, or \code{GDK_CURRENT_TIME} if no timestamp is
available.}
}
\details{If you set up anything at the time you take the grab that needs to be cleaned
up when the grab ends, you should handle the \code{\link{GdkEventGrabBroken}} events that
are emitted when the grab ends unvoluntarily.}
\value{[\code{\link{GdkGrabStatus}}] \code{GDK_GRAB_SUCCESS} if the grab was successful.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
