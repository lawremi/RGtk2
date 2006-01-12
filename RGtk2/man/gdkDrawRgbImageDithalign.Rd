\alias{gdkDrawRgbImageDithalign}
\name{gdkDrawRgbImageDithalign}
\title{gdkDrawRgbImageDithalign}
\description{Draws an RGB image in the drawable, with an adjustment for dither alignment.}
\usage{gdkDrawRgbImageDithalign(object, gc, x, y, width, height, dith, rgb.buf, xdith, ydith)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}] The \code{\link{GdkDrawable}} to draw in (usually a \code{\link{GdkWindow}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}] The graphics context.}
\item{\code{x}}{[integer] The x coordinate of the top-left corner in the drawable.}
\item{\code{y}}{[integer] The y coordinate of the top-left corner in the drawable.}
\item{\code{width}}{[integer] The width of the rectangle to be drawn.}
\item{\code{height}}{[integer] The height of the rectangle to be drawn.}
\item{\code{dith}}{[\code{\link{GdkRgbDither}}] A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\code{rgb.buf}}{[integer] The pixel data, represented as packed 24-bit data.}
\item{\code{xdith}}{[integer] An x offset for dither alignment.}
\item{\code{ydith}}{[integer] A y offset for dither alignment.}
}
\details{This function is useful when drawing dithered images into a window
that may be scrolled. Pixel (x, y) will be drawn dithered as if its
actual location is (x + \code{xdith}, y + \code{ydith}). Thus, if you draw an
image into a window using zero dither alignment, then scroll up one
pixel, subsequent draws to the window should have \code{ydith} = 1.
  
Setting the dither alignment correctly allows updating of small parts
of the screen while avoiding visible "seams" between the different
dither textures.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
