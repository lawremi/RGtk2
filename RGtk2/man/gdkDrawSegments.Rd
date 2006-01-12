\alias{gdkDrawSegments}
\name{gdkDrawSegments}
\title{gdkDrawSegments}
\description{Draws a number of unconnected lines.}
\usage{gdkDrawSegments(object, gc, segs)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{segs}}{[\code{\link{GdkSegment}}]  a list of \code{\link{GdkSegment}} structures specifying the start and 
  end points of the lines to be drawn.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
