\alias{gdkPixbufSaturateAndPixelate}
\name{gdkPixbufSaturateAndPixelate}
\title{gdkPixbufSaturateAndPixelate}
\description{Modifies saturation and optionally pixelates \code{src}, placing the result in
\code{dest}. \code{src} and \code{dest} may be the same pixbuf with no ill effects.  If
\code{saturation} is 1.0 then saturation is not changed. If it's less than 1.0,
saturation is reduced (the image turns toward grayscale); if greater than
1.0, saturation is increased (the image gets more vivid colors). If \code{pixelate}
is \code{TRUE}, then pixels are faded in a checkerboard pattern to create a
pixelated image. \code{src} and \code{dest} must have the same image format, size, and
rowstride.}
\usage{gdkPixbufSaturateAndPixelate(object, dest, saturation, pixelate)}
\arguments{
\item{\verb{object}}{source image}
\item{\verb{dest}}{place to write modified version of \code{src}}
\item{\verb{saturation}}{saturation factor}
\item{\verb{pixelate}}{whether to pixelate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
