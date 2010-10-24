\alias{gdkWindowInvalidateRegion}
\name{gdkWindowInvalidateRegion}
\title{gdkWindowInvalidateRegion}
\description{Adds \code{region} to the update area for \code{window}. The update area is the
region that needs to be redrawn, or "dirty region." The call
\code{\link{gdkWindowProcessUpdates}} sends one or more expose events to the
window, which together cover the entire update area. An
application would normally redraw the contents of \code{window} in
response to those expose events.}
\usage{gdkWindowInvalidateRegion(object, region, invalidate.children)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{region}}{a \code{\link{GdkRegion}}}
\item{\verb{invalidate.children}}{\code{TRUE} to also invalidate child windows}
}
\details{GDK will call \code{\link{gdkWindowProcessAllUpdates}} on your behalf
whenever your program returns to the main loop and becomes idle, so
normally there's no need to do that manually, you just need to
invalidate regions that you know should be redrawn.
  
The \code{invalidate.children} parameter controls whether the region of
each child window that intersects \code{region} will also be invalidated.
If \code{FALSE}, then the update area for child windows will remain
unaffected. See gdk_window_invalidate_maybe_recurse if you need
fine grained control over which children are invalidated.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
