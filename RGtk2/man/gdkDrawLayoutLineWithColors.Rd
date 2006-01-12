\alias{gdkDrawLayoutLineWithColors}
\name{gdkDrawLayoutLineWithColors}
\title{gdkDrawLayoutLineWithColors}
\description{Render a \code{\link{PangoLayoutLine}} onto a \code{\link{GdkDrawable}}, overriding the
layout's normal colors with \code{foreground} and/or \code{background}.
\code{foreground} and \code{background} need not be allocated.}
\usage{gdkDrawLayoutLineWithColors(drawable, gc, x, y, line, foreground, background)}
\arguments{
\item{\code{drawable}}{[\code{\link{GdkDrawable}}]   the drawable on which to draw the line}
\item{\code{gc}}{[\code{\link{GdkGC}}]         base graphics to use}
\item{\code{x}}{[integer]          the x position of start of string (in pixels)}
\item{\code{y}}{[integer]          the y position of baseline (in pixels)}
\item{\code{line}}{[\code{\link{PangoLayoutLine}}]       a \code{\link{PangoLayoutLine}}}
\item{\code{foreground}}{[\code{\link{GdkColor}}]  foreground override color, or \code{NULL} for none}
\item{\code{background}}{[\code{\link{GdkColor}}]  background override color, or \code{NULL} for none}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the left edge of the baseline
(left is in before-tranform user coordinates) in after-transform
device coordinates.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
