\alias{gdkWindowStick}
\name{gdkWindowStick}
\title{gdkWindowStick}
\description{"Pins" a window such that it's on all workspaces and does not scroll
with viewports, for window managers that have scrollable viewports.
(When using \code{\link{GtkWindow}}, \code{\link{gtkWindowStick}} may be more useful.)}
\usage{gdkWindowStick(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{On the X11 platform, this function depends on window manager
support, so may have no effect with many window managers. However,
GDK will do the best it can to convince the window manager to stick
the window. For window managers that don't support this operation,
there's nothing you can do to force it to happen.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
