\alias{gtkWindowPropagateKeyEvent}
\name{gtkWindowPropagateKeyEvent}
\title{gtkWindowPropagateKeyEvent}
\description{Propagate a key press or release event to the focus widget and
up the focus container chain until a widget handles \code{event}.
This is normally called by the default ::key\_press\_event and
::key\_release\_event handlers for toplevel windows,
however in some cases it may be useful to call this directly when
overriding the standard key handling for a toplevel window.}
\usage{gtkWindowPropagateKeyEvent(object, event)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]   a \code{\link{GtkWindow}}}
\item{\code{event}}{[\code{\link{GdkEventKey}}]    a \code{\link{GdkEventKey}}}
}
\value{[logical]  \code{TRUE} if a widget in the focus chain handled the event.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
