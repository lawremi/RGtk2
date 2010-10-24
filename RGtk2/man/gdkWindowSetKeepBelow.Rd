\alias{gdkWindowSetKeepBelow}
\name{gdkWindowSetKeepBelow}
\title{gdkWindowSetKeepBelow}
\description{Set if \code{window} must be kept below other windows. If the
window was already below, then this function does nothing.}
\usage{gdkWindowSetKeepBelow(object, setting)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{setting}}{whether to keep \code{window} below other windows}
}
\details{On X11, asks the window manager to keep \code{window} below, if the window
manager supports this operation. Not all window managers support
this, and some deliberately ignore it or don't have a concept of
"keep below"; so you can't rely on the window being kept below.
But it will happen with most standard window managers,
and GDK makes a best effort to get it to happen.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
