\alias{gdkDrawLayoutWithColors}
\name{gdkDrawLayoutWithColors}
\title{gdkDrawLayoutWithColors}
\description{Render a \verb{\link{PangoLayout}} onto a \verb{\link{GdkDrawable}}, overriding the
layout's normal colors with \code{foreground} and/or \code{background}.
\code{foreground} and \code{background} need not be allocated.}
\usage{gdkDrawLayoutWithColors(drawable, gc, x, y, layout, foreground, background)}
\arguments{
\item{\verb{drawable}}{[\verb{\link{GdkDrawable}}]   the drawable on which to draw string}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]         base graphics context to use}
\item{\verb{x}}{[integer]          the X position of the left of the layout (in pixels)}
\item{\verb{y}}{[integer]          the Y position of the top of the layout (in pixels)}
\item{\verb{layout}}{[\verb{\link{PangoLayout}}]     a \verb{\link{PangoLayout}}}
\item{\verb{foreground}}{[\verb{\link{GdkColor}}]  foreground override color, or \code{NULL} for none}
\item{\verb{background}}{[\verb{\link{GdkColor}}]  background override color, or \code{NULL} for none}
}
\details{If the layout's \verb{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the top left corner of the
bounding box (in device space) of the transformed layout.
  
If you're using GTK+, the ususal way to obtain a \verb{\link{PangoLayout}}
is \code{\link{gtkWidgetCreatePangoLayout}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
