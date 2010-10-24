\alias{gdkWindowSetComposited}
\name{gdkWindowSetComposited}
\title{gdkWindowSetComposited}
\description{Sets a \code{\link{GdkWindow}} as composited, or unsets it. Composited
windows do not automatically have their contents drawn to
the screen. Drawing is redirected to an offscreen buffer
and an expose event is emitted on the parent of the composited
window. It is the responsibility of the parent's expose handler
to manually merge the off-screen content onto the screen in
whatever way it sees fit. See 
for an example.}
\usage{gdkWindowSetComposited(object, composited)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{composited}}{\code{TRUE} to set the window as composited}
}
\details{It only makes sense for child windows to be composited; see
\code{\link{gdkWindowSetOpacity}} if you need translucent toplevel
windows.
  
An additional effect of this call is that the area of this
window is no longer clipped from regions marked for
invalidation on its parent. Draws done on the parent
window are also no longer clipped by the child.
  
This call is only supported on some systems (currently,
only X11 with new enough Xcomposite and Xdamage extensions).
You must call \code{\link{gdkDisplaySupportsComposite}} to check if
setting a window as composited is supported before
attempting to do so.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
