\alias{gtkWindowPropagateKeyEvent}
\name{gtkWindowPropagateKeyEvent}
\title{gtkWindowPropagateKeyEvent}
\description{Propagate a key press or release event to the focus widget and
up the focus container chain until a widget handles \code{event}.
This is normally called by the default ::key_press_event and
::key_release_event handlers for toplevel windows,
however in some cases it may be useful to call this directly when
overriding the standard key handling for a toplevel window.}
\usage{gtkWindowPropagateKeyEvent(object, event)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{event}}{a \code{\link{GdkEventKey}}}
}
\details{Since 2.4}
\value{[logical] \code{TRUE} if a widget in the focus chain handled the event.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
