\alias{gdkWindowSetKeepAbove}
\name{gdkWindowSetKeepAbove}
\title{gdkWindowSetKeepAbove}
\description{Set if \code{window} must be kept above other windows. If the
window was already above, then this function does nothing.}
\usage{gdkWindowSetKeepAbove(object, setting)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{setting}}{whether to keep \code{window} above other windows}
}
\details{On X11, asks the window manager to keep \code{window} above, if the window
manager supports this operation. Not all window managers support
this, and some deliberately ignore it or don't have a concept of
"keep above"; so you can't rely on the window being kept above.
But it will happen with most standard window managers,
and GDK makes a best effort to get it to happen.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
