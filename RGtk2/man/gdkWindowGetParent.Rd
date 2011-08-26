\alias{gdkWindowGetParent}
\name{gdkWindowGetParent}
\title{gdkWindowGetParent}
\description{Obtains the parent of \code{window}, as known to GDK. Does not query the
X server; thus this returns the parent as passed to \code{\link{gdkWindowNew}},
not the actual parent. This should never matter unless you're using
Xlib calls mixed with GDK calls on the X11 platform. It may also
matter for toplevel windows, because the window manager may choose
to reparent them.}
\usage{gdkWindowGetParent(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\value{[\code{\link{GdkWindow}}] parent of \code{window}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
