\alias{gdkPixbufComposite}
\name{gdkPixbufComposite}
\title{gdkPixbufComposite}
\description{Creates a transformation of the source image \code{src} by scaling by
\code{scale.x} and \code{scale.y} then translating by \code{offset.x} and \code{offset.y}.
This gives an image in the coordinates of the destination pixbuf.
The rectangle (\code{dest.x}, \code{dest.y}, \code{dest.width}, \code{dest.height})
is then composited onto the corresponding rectangle of the
original destination image.}
\usage{gdkPixbufComposite(object, dest, dest.x, dest.y, dest.width, 
    dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, 
    overall.alpha)}
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
}
\details{When the destination rectangle contains parts not in the source 
image, the data at the edges of the source image is replicated
to infinity. 
  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
