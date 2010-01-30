\alias{gdkDrawLayout}
\name{gdkDrawLayout}
\title{gdkDrawLayout}
\description{Render a \verb{\link{PangoLayout}} onto a GDK drawable}
\usage{gdkDrawLayout(object, gc, x, y, layout)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDrawable}}]   the drawable on which to draw string}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]         base graphics context to use}
\item{\verb{x}}{[integer]          the X position of the left of the layout (in pixels)}
\item{\verb{y}}{[integer]          the Y position of the top of the layout (in pixels)}
\item{\verb{layout}}{[\verb{\link{PangoLayout}}]     a \verb{\link{PangoLayout}}}
}
\details{If the layout's \verb{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the top left corner of the
bounding box (in device space) of the transformed layout.
  
If you're using GTK+, the usual way to obtain a \verb{\link{PangoLayout}}
is \code{\link{gtkWidgetCreatePangoLayout}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
