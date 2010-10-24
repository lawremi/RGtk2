\alias{gdkGCOffset}
\name{gdkGCOffset}
\title{gdkGCOffset}
\description{Offset attributes such as the clip and tile-stipple origins
of the GC so that drawing at x - x_offset, y - y_offset with
the offset GC  has the same effect as drawing at x, y with the original
GC.}
\usage{gdkGCOffset(object, x.offset, y.offset)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkGC}}}
\item{\verb{x.offset}}{amount by which to offset the GC in the X direction}
\item{\verb{y.offset}}{amount by which to offset the GC in the Y direction}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
