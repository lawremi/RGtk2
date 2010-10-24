\alias{gdkWindowUnfullscreen}
\name{gdkWindowUnfullscreen}
\title{gdkWindowUnfullscreen}
\description{Moves the window out of fullscreen mode. If the window was not
fullscreen, does nothing.}
\usage{gdkWindowUnfullscreen(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{On X11, asks the window manager to move \code{window} out of the fullscreen
state, if the window manager supports this operation. Not all
window managers support this, and some deliberately ignore it or
don't have a concept of "fullscreen"; so you can't rely on the
unfullscreenification actually happening. But it will happen with
most standard window managers, and GDK makes a best effort to get
it to happen.
  Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
