\alias{gdkDrawPolygon}
\name{gdkDrawPolygon}
\title{gdkDrawPolygon}
\description{Draws an outlined or filled polygon.}
\usage{gdkDrawPolygon(object, gc, filled, points)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\verb{gc}}{a \code{\link{GdkGC}}.}
\item{\verb{filled}}{\code{TRUE} if the polygon should be filled. The polygon is closed
automatically, connecting the last point to the first point if
necessary.}
\item{\verb{points}}{a list of \code{\link{GdkPoint}} structures specifying the points making
up the polygon.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
