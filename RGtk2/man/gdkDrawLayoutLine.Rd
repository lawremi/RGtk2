\alias{gdkDrawLayoutLine}
\name{gdkDrawLayoutLine}
\title{gdkDrawLayoutLine}
\description{Render a \code{\link{PangoLayoutLine}} onto an GDK drawable}
\usage{gdkDrawLayoutLine(object, gc, x, y, line)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDrawable}}]   the drawable on which to draw the line}
\item{\code{gc}}{[\code{\link{GdkGC}}]         base graphics to use}
\item{\code{x}}{[integer]          the x position of start of string (in pixels)}
\item{\code{y}}{[integer]          the y position of baseline (in pixels)}
\item{\code{line}}{[\code{\link{PangoLayoutLine}}]       a \code{\link{PangoLayoutLine}}}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the left edge of the baseline
(left is in before-tranform user coordinates) in after-transform
device coordinates.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
