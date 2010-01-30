\alias{gdkDrawLayoutLineWithColors}
\name{gdkDrawLayoutLineWithColors}
\title{gdkDrawLayoutLineWithColors}
\description{Render a \verb{\link{PangoLayoutLine}} onto a \verb{\link{GdkDrawable}}, overriding the
layout's normal colors with \code{foreground} and/or \code{background}.
\code{foreground} and \code{background} need not be allocated.}
\usage{gdkDrawLayoutLineWithColors(drawable, gc, x, y, line, foreground, background)}
\arguments{
\item{\verb{drawable}}{[\verb{\link{GdkDrawable}}]   the drawable on which to draw the line}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]         base graphics to use}
\item{\verb{x}}{[integer]          the x position of start of string (in pixels)}
\item{\verb{y}}{[integer]          the y position of baseline (in pixels)}
\item{\verb{line}}{[\verb{\link{PangoLayoutLine}}]       a \verb{\link{PangoLayoutLine}}}
\item{\verb{foreground}}{[\verb{\link{GdkColor}}]  foreground override color, or \code{NULL} for none}
\item{\verb{background}}{[\verb{\link{GdkColor}}]  background override color, or \code{NULL} for none}
}
\details{If the layout's \verb{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the left edge of the baseline
(left is in before-tranform user coordinates) in after-transform
device coordinates.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
