\alias{gdkPixbufRenderThresholdAlpha}
\name{gdkPixbufRenderThresholdAlpha}
\title{gdkPixbufRenderThresholdAlpha}
\description{Takes the opacity values in a rectangular portion of a pixbuf and thresholds
them to produce a bi-level alpha mask that can be used as a clipping mask for
a drawable.}
\usage{gdkPixbufRenderThresholdAlpha(object, bitmap, src.x, src.y, dest.x, dest.y, width = -1, height = -1, alpha.threshold)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkPixbuf}}]  A pixbuf.}
\item{\verb{bitmap}}{[\verb{\link{GdkBitmap}}]  Bitmap where the bilevel mask will be painted to.}
\item{\verb{src.x}}{[integer]  Source X coordinate.}
\item{\verb{src.y}}{[integer]  source Y coordinate.}
\item{\verb{dest.x}}{[integer]  Destination X coordinate.}
\item{\verb{dest.y}}{[integer]  Destination Y coordinate.}
\item{\verb{width}}{[integer]  Width of region to threshold, or -1 to use pixbuf width}
\item{\verb{height}}{[integer]  Height of region to threshold, or -1 to use pixbuf height}
\item{\verb{alpha.threshold}}{[integer]  Opacity values below this will be painted as zero; all
other values will be painted as one.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
