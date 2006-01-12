\alias{gdkWindowShapeCombineRegion}
\name{gdkWindowShapeCombineRegion}
\title{gdkWindowShapeCombineRegion}
\description{Makes pixels in \code{window} outside \code{shape.region} be transparent,
so that the window may be nonrectangular. See also
\code{\link{gdkWindowShapeCombineMask}} to use a bitmap as the mask.}
\usage{gdkWindowShapeCombineRegion(object, shape.region = NULL, offset.x, offset.y)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{shape.region}}{[\code{\link{GdkRegion}}]  region of window to be non-transparent}
\item{\code{offset.x}}{[integer]  X position of \code{shape.region} in \code{window} coordinates}
\item{\code{offset.y}}{[integer]  Y position of \code{shape.region} in \code{window} coordinates}
}
\details{If \code{shape.region} is \code{NULL}, the shape will be unset, so the whole
window will be opaque again. \code{offset.x} and \code{offset.y} are ignored
if \code{shape.region} is \code{NULL}.
  
On the X11 platform, this uses an X server extension which is
widely available on most common platforms, but not available on
very old X servers, and occasionally the implementation will be
buggy. On servers without the shape extension, this function
will do nothing.
  
This function works on both toplevel and child windows.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
