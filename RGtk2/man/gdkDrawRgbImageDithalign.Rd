\alias{gdkDrawRgbImageDithalign}
\name{gdkDrawRgbImageDithalign}
\title{gdkDrawRgbImageDithalign}
\description{Draws an RGB image in the drawable, with an adjustment for dither alignment.}
\usage{gdkDrawRgbImageDithalign(object, gc, x, y, width, height, dith, rgb.buf, xdith, ydith)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}] The \verb{\link{GdkDrawable}} to draw in (usually a \verb{\link{GdkWindow}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}] The graphics context.}
\item{\verb{x}}{[integer] The x coordinate of the top-left corner in the drawable.}
\item{\verb{y}}{[integer] The y coordinate of the top-left corner in the drawable.}
\item{\verb{width}}{[integer] The width of the rectangle to be drawn.}
\item{\verb{height}}{[integer] The height of the rectangle to be drawn.}
\item{\verb{dith}}{[\code{\link{GdkRgbDither}}] A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\verb{rgb.buf}}{[raw] The pixel data, represented as packed 24-bit data.}
\item{\verb{xdith}}{[integer] An x offset for dither alignment.}
\item{\verb{ydith}}{[integer] A y offset for dither alignment.}
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
