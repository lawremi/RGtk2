\alias{gdkPixbufScale}
\name{gdkPixbufScale}
\title{gdkPixbufScale}
\description{Creates a transformation of the source image \code{src} by scaling by
\code{scale.x} and \code{scale.y} then translating by \code{offset.x} and \code{offset.y},
then renders the rectangle (\code{dest.x}, \code{dest.y}, \code{dest.width},
\code{dest.height}) of the resulting image onto the destination image
replacing the previous contents.}
\usage{gdkPixbufScale(object, dest, dest.x, dest.y, dest.width, dest.height, 
    offset.x, offset.y, scale.x, scale.y, interp.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkPixbuf}}}
\item{\verb{dest}}{the \code{\link{GdkPixbuf}} into which to render the results}
\item{\verb{dest.x}}{the left coordinate for region to render}
\item{\verb{dest.y}}{the top coordinate for region to render}
\item{\verb{dest.width}}{the width of the region to render}
\item{\verb{dest.height}}{the height of the region to render}
\item{\verb{offset.x}}{the offset in the X direction (currently rounded to an integer)}
\item{\verb{offset.y}}{the offset in the Y direction (currently rounded to an integer)}
\item{\verb{scale.x}}{the scale factor in the X direction}
\item{\verb{scale.y}}{the scale factor in the Y direction}
\item{\verb{interp.type}}{the interpolation type for the transformation.}
}
\details{Try to use \code{\link{gdkPixbufScaleSimple}} first, this function is
the industrial-strength power tool you can fall back to if
\code{\link{gdkPixbufScaleSimple}} isn't powerful enough.
  
If the source rectangle overlaps the destination rectangle on the
same pixbuf, it will be overwritten during the scaling which
results in rendering artifacts.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
