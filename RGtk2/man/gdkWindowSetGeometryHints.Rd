\alias{gdkWindowSetGeometryHints}
\name{gdkWindowSetGeometryHints}
\title{gdkWindowSetGeometryHints}
\description{Sets the geometry hints for \code{window}. Hints flagged in \code{geom.mask}
are set, hints not flagged in \code{geom.mask} are unset.
To unset all hints, use a \code{geom.mask} of 0 and a \code{geometry} of \code{NULL}.}
\usage{gdkWindowSetGeometryHints(object, geometry)}
\arguments{
\item{\verb{object}}{a toplevel \code{\link{GdkWindow}}}
\item{\verb{geometry}}{geometry hints}
}
\details{This function provides hints to the windowing system about
acceptable sizes for a toplevel window. The purpose of 
this is to constrain user resizing, but the windowing system
will typically  (but is not required to) also constrain the
current size of the window to the provided values and
constrain programatic resizing via \code{\link{gdkWindowResize}} or
\code{\link{gdkWindowMoveResize}}.
  
Note that on X11, this effect has no effect on windows
of type \code{GDK_WINDOW_TEMP} or windows where override redirect
has been turned on via \code{\link{gdkWindowSetOverrideRedirect}}
since these windows are not resizable by the user.
  
Since you can't count on the windowing system doing the
constraints for programmatic resizes, you should generally
call \code{\link{gdkWindowConstrainSize}} yourself to determine
appropriate sizes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
