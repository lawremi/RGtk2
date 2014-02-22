\alias{gdkDrawLayoutLineWithColors}
\name{gdkDrawLayoutLineWithColors}
\title{gdkDrawLayoutLineWithColors}
\description{Render a \code{\link{PangoLayoutLine}} onto a \code{\link{GdkDrawable}}, overriding the
layout's normal colors with \code{foreground} and/or \code{background}.
\code{foreground} and \code{background} need not be allocated.}
\usage{gdkDrawLayoutLineWithColors(drawable, gc, x, y, line, foreground, 
    background)}
\arguments{
\item{\verb{drawable}}{the drawable on which to draw the line}
\item{\verb{gc}}{base graphics to use}
\item{\verb{x}}{the x position of start of string (in pixels)}
\item{\verb{y}}{the y position of baseline (in pixels)}
\item{\verb{line}}{a \code{\link{PangoLayoutLine}}}
\item{\verb{foreground}}{foreground override color, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{background}}{background override color, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the left edge of the baseline
(left is in before-tranform user coordinates) in after-transform
device coordinates.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
