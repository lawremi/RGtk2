\alias{gdkDrawLines}
\name{gdkDrawLines}
\title{gdkDrawLines}
\description{Draws a series of lines connecting the given points.
The way in which joins between lines are draw is determined by the
\code{\link{GdkCapStyle}} value in the \verb{\link{GdkGC}}. This can be set with
\code{\link{gdkGCSetLineAttributes}}.}
\usage{gdkDrawLines(object, gc, points)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]  a \verb{\link{GdkDrawable}} (a \verb{\link{GdkWindow}} or a \verb{\link{GdkPixmap}}).}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{points}}{[\verb{\link{GdkPoint}}]  a list of \verb{\link{GdkPoint}} structures specifying the endpoints of the}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
