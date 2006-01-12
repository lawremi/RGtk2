\alias{gdkDrawLine}
\name{gdkDrawLine}
\title{gdkDrawLine}
\description{Draws a line, using the foreground color and other attributes of 
the \code{\link{GdkGC}}.}
\usage{gdkDrawLine(object, gc, x1, y1, x2, y2)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}). }
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{x1}}{[integer]  the x coordinate of the start point.}
\item{\code{y1}}{[integer]  the y coordinate of the start point.}
\item{\code{x2}}{[integer]  the x coordinate of the end point.}
\item{\code{y2}}{[integer]  the y coordinate of the end point.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
