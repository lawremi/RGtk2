\alias{gdkPixbufComposite}
\name{gdkPixbufComposite}
\title{gdkPixbufComposite}
\description{Creates a transformation of the source image \code{src} by scaling by
\code{scale.x} and \code{scale.y} then translating by \code{offset.x} and \code{offset.y}.
This gives an image in the coordinates of the destination pixbuf.
The rectangle (\code{dest.x}, \code{dest.y}, \code{dest.width}, \code{dest.height})
is then composited onto the corresponding rectangle of the
original destination image.}
\usage{gdkPixbufComposite(object, dest, dest.x, dest.y, dest.width, dest.height, offset.x, offset.y, scale.x, scale.y, interp.type, overall.alpha)}
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
}
\details{When the destination rectangle contains parts not in the source 
image, the data at the edges of the source image is replicated
to infinity. 
  

  \emph{Compositing of pixbufs}
  
  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
