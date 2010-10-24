\alias{gdkWindowEnableSynchronizedConfigure}
\name{gdkWindowEnableSynchronizedConfigure}
\title{gdkWindowEnableSynchronizedConfigure}
\description{Indicates that the application will cooperate with the window
system in synchronizing the window repaint with the window
manager during resizing operations. After an application calls
this function, it must call \code{\link{gdkWindowConfigureFinished}} every
time it has finished all processing associated with a set of
Configure events. Toplevel GTK+ windows automatically use this
protocol.}
\usage{gdkWindowEnableSynchronizedConfigure(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{On X, calling this function makes \code{window} participate in the
_NET_WM_SYNC_REQUEST window manager protocol.
  Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
