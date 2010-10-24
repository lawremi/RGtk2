\alias{gdkWindowGetGeometry}
\name{gdkWindowGetGeometry}
\title{gdkWindowGetGeometry}
\description{Any of the return location arguments to this function may be \code{NULL},
if you aren't interested in getting the value of that field.}
\usage{gdkWindowGetGeometry(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\details{The X and Y coordinates returned are relative to the parent window
of \code{window}, which for toplevels usually means relative to the
window decorations (titlebar, etc.) rather than relative to the
root window (screen-size background window).
  
On the X11 platform, the geometry is obtained from the X server,
so reflects the latest position of \code{window}; this may be out-of-sync
with the position of \code{window} delivered in the most-recently-processed
\code{\link{GdkEventConfigure}}. \code{\link{gdkWindowGetPosition}} in contrast gets the
position from the most recent configure event.
  \strong{PLEASE NOTE:} If   \code{window}   is not a toplevel, it is   \emph{much}   better
to call   \code{\link{gdkWindowGetPosition}}   and   \code{\link{gdkDrawableGetSize}}   instead,
because it avoids the roundtrip to the X server and because
  \code{\link{gdkDrawableGetSize}}   supports the full 32-bit coordinate space,
whereas   \code{\link{gdkWindowGetGeometry}}   is restricted to the 16-bit
coordinates of X11.}
\value{
A list containing the following elements:
\item{\verb{x}}{return location for X coordinate of window (relative to its parent)}
\item{\verb{y}}{return location for Y coordinate of window (relative to its parent)}
\item{\verb{width}}{return location for width of window}
\item{\verb{height}}{return location for height of window}
\item{\verb{depth}}{return location for bit depth of window}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
