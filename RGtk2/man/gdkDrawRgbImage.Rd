\alias{gdkDrawRgbImage}
\name{gdkDrawRgbImage}
\title{gdkDrawRgbImage}
\description{Draws an RGB image in the drawable. This is the core GdkRGB
function, and likely the only one you will need to use.}
\usage{gdkDrawRgbImage(object, gc, x, y, width, height, dith, rgb.buf, rowstride)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}] The \verb{\link{GdkDrawable}} to draw in (usually a \verb{\link{GdkWindow}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}] The graphics context (all GDK drawing operations require one; its
contents are ignored).}
\item{\verb{x}}{[integer] The x coordinate of the top-left corner in the drawable.}
\item{\verb{y}}{[integer] The y coordinate of the top-left corner in the drawable.}
\item{\verb{width}}{[integer] The width of the rectangle to be drawn.}
\item{\verb{height}}{[integer] The height of the rectangle to be drawn.}
\item{\verb{dith}}{[\code{\link{GdkRgbDither}}] A \code{\link{GdkRgbDither}} value, selecting the desired dither mode.}
\item{\verb{rgb.buf}}{[raw] The pixel data, represented as packed 24-bit data.}
\item{\verb{rowstride}}{[integer] The number of bytes from the start of one row in \code{rgb.buf} to the
start of the next.}
}
\details{The \code{rowstride} parameter allows for lines to be aligned more flexibly.
For example, lines may be allocated to begin on 32-bit boundaries,
even if the width of the rectangle is odd. Rowstride is also useful
when drawing a subrectangle of a larger image in memory. Finally, to
replicate the same line a number of times, the trick of setting
\code{rowstride} to 0 is allowed.
  
In general, for 0 <= i < \code{width} and 0 <= j < height,
the pixel (x + i, y + j) is colored with red value \code{rgb.buf}[\code{j} *
\code{rowstride} + \code{i} * 3], green value \code{rgb.buf}[\code{j} * \code{rowstride} + \code{i} * 3 +
1], and blue value \code{rgb.buf}[\code{j} * \code{rowstride} + \code{i} * 3 + 2].}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
