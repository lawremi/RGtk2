\alias{gtkWindowStick}
\name{gtkWindowStick}
\title{gtkWindowStick}
\description{Asks to stick \code{window}, which means that it will appear on all user
desktops. Note that you shouldn't assume the window is definitely
stuck afterward, because other entities (e.g. the user or window manager) could unstick it
again, and some window managers do not support sticking
windows. But normally the window will end up stuck. Just don't
write code that crashes if not.}
\usage{gtkWindowStick(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\details{It's permitted to call this function before showing a window.
  
You can track stickiness via the "window-state-event" signal
on \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
