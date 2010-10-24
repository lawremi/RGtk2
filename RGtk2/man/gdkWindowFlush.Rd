\alias{gdkWindowFlush}
\name{gdkWindowFlush}
\title{gdkWindowFlush}
\description{Flush all outstanding cached operations on a window, leaving the
window in a state which reflects all that has been drawn before.}
\usage{gdkWindowFlush(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{Gdk uses multiple kinds of caching to get better performance and
nicer drawing. For instance, during exposes all paints to a window
using double buffered rendering are keep on a pixmap until the last
window has been exposed. It also delays window moves/scrolls until
as long as possible until next update to avoid tearing when moving
windows.
  
Normally this should be completely invisible to applications, as
we automatically flush the windows when required, but this might
be needed if you for instance mix direct native drawing with
gdk drawing. For Gtk widgets that don't use double buffering this
will be called automatically before sending the expose event.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
