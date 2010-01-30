\alias{gdkDrawPolygon}
\name{gdkDrawPolygon}
\title{gdkDrawPolygon}
\description{Draws an outlined or filled polygon.}
\usage{gdkDrawPolygon(object, gc, filled, points)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}} (a \verb{\link{GdkWindow}} or a \verb{\link{GdkPixmap}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{filled}}{[logical] \code{TRUE} if the polygon should be filled. The polygon is closed
    automatically, connecting the last point to the first point if 
    necessary.}
\item{\verb{points}}{[\verb{\link{GdkPoint}}]  a list of \verb{\link{GdkPoint}} structures specifying the points making 
    up the polygon.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
