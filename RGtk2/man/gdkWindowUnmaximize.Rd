\alias{gdkWindowUnmaximize}
\name{gdkWindowUnmaximize}
\title{gdkWindowUnmaximize}
\description{Unmaximizes the window. If the window wasn't maximized, then this
function does nothing.}
\usage{gdkWindowUnmaximize(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{On X11, asks the window manager to unmaximize \code{window}, if the
window manager supports this operation. Not all window managers
support this, and some deliberately ignore it or don't have a
concept of "maximized"; so you can't rely on the unmaximization
actually happening. But it will happen with most standard window
managers, and GDK makes a best effort to get it to happen.
  
On Windows, reliably unmaximizes the window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
