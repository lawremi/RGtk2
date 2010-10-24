\alias{gdkDisplayFlush}
\name{gdkDisplayFlush}
\title{gdkDisplayFlush}
\description{Flushes any requests queued for the windowing system; this happens automatically
when the main loop blocks waiting for new events, but if your application
is drawing without returning control to the main loop, you may need
to call this function explicitely. A common case where this function
needs to be called is when an application is executing drawing commands
from a thread other than the thread where the main loop is running.}
\usage{gdkDisplayFlush(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{This is most useful for X11. On windowing systems where requests are
handled synchronously, this function will do nothing.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
