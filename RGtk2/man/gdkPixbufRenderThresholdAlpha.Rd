\alias{gdkPixbufRenderThresholdAlpha}
\name{gdkPixbufRenderThresholdAlpha}
\title{gdkPixbufRenderThresholdAlpha}
\description{Takes the opacity values in a rectangular portion of a pixbuf and thresholds
them to produce a bi-level alpha mask that can be used as a clipping mask for
a drawable.}
\usage{gdkPixbufRenderThresholdAlpha(object, bitmap, src.x, src.y, dest.x, dest.y, width = -1, height = -1, alpha.threshold)}
\arguments{
\item{\code{object}}{[\code{\link{GdkPixbuf}}]  A pixbuf.}
\item{\code{bitmap}}{[\code{\link{GdkBitmap}}]  Bitmap where the bilevel mask will be painted to.}
\item{\code{src.x}}{[integer]  Source X coordinate.}
\item{\code{src.y}}{[integer]  source Y coordinate.}
\item{\code{dest.x}}{[integer]  Destination X coordinate.}
\item{\code{dest.y}}{[integer]  Destination Y coordinate.}
\item{\code{width}}{[integer]  Width of region to threshold, or -1 to use pixbuf width}
\item{\code{height}}{[integer]  Height of region to threshold, or -1 to use pixbuf height}
\item{\code{alpha.threshold}}{[integer]  Opacity values below this will be painted as zero; all
other values will be painted as one.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
