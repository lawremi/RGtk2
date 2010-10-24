\alias{gdkWindowFullscreen}
\name{gdkWindowFullscreen}
\title{gdkWindowFullscreen}
\description{Moves the window into fullscreen mode. This means the
window covers the entire screen and is above any panels
or task bars.}
\usage{gdkWindowFullscreen(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{If the window was already fullscreen, then this function does nothing.
  
On X11, asks the window manager to put \code{window} in a fullscreen
state, if the window manager supports this operation. Not all
window managers support this, and some deliberately ignore it or
don't have a concept of "fullscreen"; so you can't rely on the
fullscreenification actually happening. But it will happen with
most standard window managers, and GDK makes a best effort to get
it to happen.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
