\alias{gtkWindowSetStartupId}
\name{gtkWindowSetStartupId}
\title{gtkWindowSetStartupId}
\description{Startup notification identifiers are used by desktop environment to 
track application startup, to provide user feedback and other 
features. This function changes the corresponding property on the
underlying GdkWindow. Normally, startup identifier is managed 
automatically and you should only use this function in special cases
like transferring focus from other processes. You should use this
function before calling \code{\link{gtkWindowPresent}} or any equivalent
function generating a window map event.}
\usage{gtkWindowSetStartupId(object, startup.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{startup.id}}{a string with startup-notification identifier}
}
\details{This function is only useful on X11, not with other GTK+ targets.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
