\alias{gdkDrawLayout}
\name{gdkDrawLayout}
\title{gdkDrawLayout}
\description{Render a \code{\link{PangoLayout}} onto a GDK drawable}
\usage{gdkDrawLayout(object, gc, x, y, layout)}
\arguments{
\item{\verb{object}}{the drawable on which to draw string}
\item{\verb{gc}}{base graphics context to use}
\item{\verb{x}}{the X position of the left of the layout (in pixels)}
\item{\verb{y}}{the Y position of the top of the layout (in pixels)}
\item{\verb{layout}}{a \code{\link{PangoLayout}}}
}
\details{If the layout's \code{\link{PangoContext}} has a transformation matrix set, then
\code{x} and \code{y} specify the position of the top left corner of the
bounding box (in device space) of the transformed layout.
  
If you're using GTK+, the usual way to obtain a \code{\link{PangoLayout}}
is \code{\link{gtkWidgetCreatePangoLayout}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
