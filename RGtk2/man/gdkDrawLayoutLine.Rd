\alias{gdkDrawLayoutLine}
\name{gdkDrawLayoutLine}
\title{gdkDrawLayoutLine}
\description{Render a \code{\link{PangoLayoutLine}} onto an GDK drawable}
\usage{gdkDrawLayoutLine(object, gc, x, y, line)}
\arguments{
\item{\verb{object}}{the drawable on which to draw the line}
\item{\verb{gc}}{base graphics to use}
\item{\verb{x}}{the x position of start of string (in pixels)}
\item{\verb{y}}{the y position of baseline (in pixels)}
\item{\verb{line}}{a \code{\link{PangoLayoutLine}}}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the left edge of the baseline
(left is in before-tranform user coordinates) in after-transform
device coordinates.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
