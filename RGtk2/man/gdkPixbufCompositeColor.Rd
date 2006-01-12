\alias{gdkPixbufCompositeColor}
\name{gdkPixbufCompositeColor}
\title{gdkPixbufCompositeColor}
\description{Creates a transformation of the source image \code{src} by scaling by
\code{scale.x} and \code{scale.y} then translating by \code{offset.x} and \code{offset.y},
then composites the rectangle (\code{dest.x} ,\code{dest.y}, \code{dest.width},
\code{dest.height}) of the resulting image with a checkboard of the
colors \code{color1} and \code{color2} and renders it onto the destination
image.}
\usage{gdkPixbufCompositeColor(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha, check.x, check.y, check.size, color1, color2)}
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
\item{\code{overall.alpha}}{[integer]  overall alpha for source image (0..255)}
\item{\code{check.x}}{[integer]  the X offset for the checkboard (origin of checkboard is at -\code{check.x}, -\code{check.y})}
\item{\code{check.y}}{[integer]  the Y offset for the checkboard }
\item{\code{check.size}}{[integer]  the size of checks in the checkboard (must be a power of two)}
\item{\code{color1}}{[numeric]  the color of check at upper left}
\item{\code{color2}}{[numeric]  the color of the other check}
}
\details{See \code{\link{gdkPixbufCompositeColorSimple}} for a simpler variant of this
function suitable for many tasks.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
