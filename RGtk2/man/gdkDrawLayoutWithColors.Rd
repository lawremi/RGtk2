\alias{gdkDrawLayoutWithColors}
\name{gdkDrawLayoutWithColors}
\title{gdkDrawLayoutWithColors}
\description{Render a \code{\link{PangoLayout}} onto a \code{\link{GdkDrawable}}, overriding the
layout's normal colors with \code{foreground} and/or \code{background}.
\code{foreground} and \code{background} need not be allocated.}
\usage{gdkDrawLayoutWithColors(drawable, gc, x, y, layout, foreground, 
    background)}
\arguments{
\item{\verb{drawable}}{the drawable on which to draw string}
\item{\verb{gc}}{base graphics context to use}
\item{\verb{x}}{the X position of the left of the layout (in pixels)}
\item{\verb{y}}{the Y position of the top of the layout (in pixels)}
\item{\verb{layout}}{a \code{\link{PangoLayout}}}
\item{\verb{foreground}}{foreground override color, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{background}}{background override color, or \code{NULL} for none. \emph{[  \acronym{allow-none}  ]}}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the top left corner of the
bounding box (in device space) of the transformed layout.
  
If you're using GTK+, the ususal way to obtain a \code{\link{PangoLayout}}
is \code{\link{gtkWidgetCreatePangoLayout}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
