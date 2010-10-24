\alias{gtkWindowSetRole}
\name{gtkWindowSetRole}
\title{gtkWindowSetRole}
\description{This function is only useful on X11, not with other GTK+ targets.}
\usage{gtkWindowSetRole(object, role)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{role}}{unique identifier for the window to be used when restoring a session}
}
\details{In combination with the window title, the window role allows a
window manager to identify "the
same" window when an application is restarted. So for example you
might set the "toolbox" role on your app's toolbox window, so that
when the user restarts their session, the window manager can put
the toolbox back in the same place.
  
If a window already has a unique title, you don't need to set the
role, since the WM can use the title to identify the window when
restoring the session.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
