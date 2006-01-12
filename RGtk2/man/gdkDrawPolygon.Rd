\alias{gdkDrawPolygon}
\name{gdkDrawPolygon}
\title{gdkDrawPolygon}
\description{Draws an outlined or filled polygon.}
\usage{gdkDrawPolygon(object, gc, filled, points)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{filled}}{[logical]  \code{TRUE} if the polygon should be filled. The polygon is closed
    automatically, connecting the last point to the first point if 
    necessary.}
\item{\code{points}}{[\code{\link{GdkPoint}}]  a list of \code{\link{GdkPoint}} structures specifying the points making 
    up the polygon.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
