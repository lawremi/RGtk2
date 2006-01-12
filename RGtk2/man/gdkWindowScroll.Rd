\alias{gdkWindowScroll}
\name{gdkWindowScroll}
\title{gdkWindowScroll}
\description{Scroll the contents of \code{window}, both pixels and children, by the given
amount. \code{window} itself does not move.  Portions of the window that the scroll
operation brings in from offscreen areas are invalidated. The invalidated
region may be bigger than what would strictly be necessary.  (For X11, a
minimum area will be invalidated if the window has no subwindows, or if the
edges of the window's parent do not extend beyond the edges of the window. In
other cases, a multi-step process is used to scroll the window which may
produce temporary visual artifacts and unnecessary invalidations.)}
\usage{gdkWindowScroll(object, dx, dy)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{dx}}{[integer]  Amount to scroll in the X direction}
\item{\code{dy}}{[integer]  Amount to scroll in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
