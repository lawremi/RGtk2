\alias{gdkDrawSegments}
\name{gdkDrawSegments}
\title{gdkDrawSegments}
\description{Draws a number of unconnected lines.}
\usage{gdkDrawSegments(object, gc, segs)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{segs}}{a list of \code{\link{GdkSegment}} structures specifying the start and
end points of the lines to be drawn.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
