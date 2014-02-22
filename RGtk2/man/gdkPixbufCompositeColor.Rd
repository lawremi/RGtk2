\alias{gdkPixbufCompositeColor}
\name{gdkPixbufCompositeColor}
\title{gdkPixbufCompositeColor}
\description{Creates a transformation of the source image \code{src} by scaling by
\code{scale.x} and \code{scale.y} then translating by \code{offset.x} and \code{offset.y},
then composites the rectangle (\code{dest.x} ,\code{dest.y}, \code{dest.width},
\code{dest.height}) of the resulting image with a checkboard of the
colors \code{color1} and \code{color2} and renders it onto the destination
image.}
\usage{gdkPixbufCompositeColor(object, dest, dest.x, dest.y, dest.width, 
    dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, 
    overall.alpha, check.x, check.y, check.size, color1, color2)}
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
\item{\verb{overall.alpha}}{overall alpha for source image (0..255)}
\item{\verb{check.x}}{the X offset for the checkboard (origin of checkboard is at -\code{check.x}, -\code{check.y})}
\item{\verb{check.y}}{the Y offset for the checkboard}
\item{\verb{check.size}}{the size of checks in the checkboard (must be a power of two)}
\item{\verb{color1}}{the color of check at upper left}
\item{\verb{color2}}{the color of the other check}
}
\details{See \code{\link{gdkPixbufCompositeColorSimple}} for a simpler variant of this
function suitable for many tasks.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
