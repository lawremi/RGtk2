\alias{gdkWindowMaximize}
\name{gdkWindowMaximize}
\title{gdkWindowMaximize}
\description{Maximizes the window. If the window was already maximized, then
this function does nothing.}
\usage{gdkWindowMaximize(object)}
\arguments{\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}}
\details{On X11, asks the window manager to maximize \code{window}, if the window
manager supports this operation. Not all window managers support
this, and some deliberately ignore it or don't have a concept of
"maximized"; so you can't rely on the maximization actually
happening. But it will happen with most standard window managers,
and GDK makes a best effort to get it to happen.
  
On Windows, reliably maximizes the window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
