\alias{gdkDrawLines}
\name{gdkDrawLines}
\title{gdkDrawLines}
\description{Draws a series of lines connecting the given points.
The way in which joins between lines are draw is determined by the
\code{\link{GdkCapStyle}} value in the \code{\link{GdkGC}}. This can be set with
\code{\link{gdkGCSetLineAttributes}}.}
\usage{gdkDrawLines(object, gc, points)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]  a \code{\link{GdkDrawable}} (a \code{\link{GdkWindow}} or a \code{\link{GdkPixmap}}).}
\item{\code{gc}}{[\code{\link{GdkGC}}]  a \code{\link{GdkGC}}.}
\item{\code{points}}{[\code{\link{GdkPoint}}]  a list of \code{\link{GdkPoint}} structures specifying the endpoints of the}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
