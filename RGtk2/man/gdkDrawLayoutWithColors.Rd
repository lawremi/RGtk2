\alias{gdkDrawLayoutWithColors}
\name{gdkDrawLayoutWithColors}
\title{gdkDrawLayoutWithColors}
\description{Render a \code{\link{PangoLayout}} onto a \code{\link{GdkDrawable}}, overriding the
layout's normal colors with \code{foreground} and/or \code{background}.
\code{foreground} and \code{background} need not be allocated.}
\usage{gdkDrawLayoutWithColors(drawable, gc, x, y, layout, foreground, background)}
\arguments{
\item{\code{drawable}}{[\code{\link{GdkDrawable}}]   the drawable on which to draw string}
\item{\code{gc}}{[\code{\link{GdkGC}}]         base graphics context to use}
\item{\code{x}}{[integer]          the X position of the left of the layout (in pixels)}
\item{\code{y}}{[integer]          the Y position of the top of the layout (in pixels)}
\item{\code{layout}}{[\code{\link{PangoLayout}}]     a \code{\link{PangoLayout}}}
\item{\code{foreground}}{[\code{\link{GdkColor}}]  foreground override color, or \code{NULL} for none}
\item{\code{background}}{[\code{\link{GdkColor}}]  background override color, or \code{NULL} for none}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the top left corner of the
bounding box (in device space) of the transformed layout.
  
If you're using GTK+, the ususal way to obtain a \code{\link{PangoLayout}}
is \code{\link{gtkWidgetCreatePangoLayout}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
