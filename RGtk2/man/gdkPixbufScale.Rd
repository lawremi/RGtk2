\alias{gdkPixbufScale}
\name{gdkPixbufScale}
\title{gdkPixbufScale}
\description{Creates a transformation of the source image \code{src} by scaling by
\code{scale.x} and \code{scale.y} then translating by \code{offset.x} and \code{offset.y},
then renders the rectangle (\code{dest.x}, \code{dest.y}, \code{dest.width},
\code{dest.height}) of the resulting image onto the destination image
replacing the previous contents.}
\usage{gdkPixbufScale(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}}}
\item{\code{dest}}{[\code{\link{GdkPixbuf}}]  the \code{\link{GdkPixbuf}} into which to render the results}
\item{\code{dest.x}}{[integer]  the left coordinate for region to render}
\item{\code{dest.y}}{[integer]  the top coordinate for region to render}
\item{\code{dest.width}}{[integer]  the width of the region to render}
\item{\code{dest.height}}{[integer]  the height of the region to render}
\item{\code{offset.x}}{[numeric]  the offset in the X direction (currently rounded to an integer)}
\item{\code{offset.y}}{[numeric]  the offset in the Y direction (currently rounded to an integer)}
\item{\code{scale.x}}{[numeric]  the scale factor in the X direction}
\item{\code{scale.y}}{[numeric]  the scale factor in the Y direction}
\item{\code{interp.type}}{[\code{\link{GdkInterpType}}]  the interpolation type for the transformation.}
}
\details{Try to use \code{\link{gdkPixbufScaleSimple}} first, this function is
the industrial-strength power tool you can fall back to if
\code{\link{gdkPixbufScaleSimple}} isn't powerful enough.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
