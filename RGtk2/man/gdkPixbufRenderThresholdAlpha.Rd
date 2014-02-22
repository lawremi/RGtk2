\alias{gdkPixbufRenderThresholdAlpha}
\name{gdkPixbufRenderThresholdAlpha}
\title{gdkPixbufRenderThresholdAlpha}
\description{Takes the opacity values in a rectangular portion of a pixbuf and thresholds
them to produce a bi-level alpha mask that can be used as a clipping mask for
a drawable.}
\usage{gdkPixbufRenderThresholdAlpha(object, bitmap, src.x, src.y, dest.x, 
    dest.y, width = -1, height = -1, alpha.threshold)}
\arguments{
\item{\verb{object}}{A pixbuf.}
\item{\verb{bitmap}}{Bitmap where the bilevel mask will be painted to.}
\item{\verb{src.x}}{Source X coordinate.}
\item{\verb{src.y}}{source Y coordinate.}
\item{\verb{dest.x}}{Destination X coordinate.}
\item{\verb{dest.y}}{Destination Y coordinate.}
\item{\verb{width}}{Width of region to threshold, or -1 to use pixbuf width}
\item{\verb{height}}{Height of region to threshold, or -1 to use pixbuf height}
\item{\verb{alpha.threshold}}{Opacity values below this will be painted as zero; all
other values will be painted as one.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
