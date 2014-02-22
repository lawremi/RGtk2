\alias{gdkWindowSetHints}
\name{gdkWindowSetHints}
\title{gdkWindowSetHints}
\description{
This function is broken and useless and you should ignore it.
If using GTK+, use functions such as \code{\link{gtkWindowResize}}, \code{gtkWindowSetSizeRequest()},
\code{\link{gtkWindowMove}}, \code{gtkWindowParseGeometry()}, and \code{\link{gtkWindowSetGeometryHints}},
depending on what you're trying to do.
\strong{WARNING: \code{gdk_window_set_hints} is deprecated and should not be used in newly-written code.}
}
\usage{gdkWindowSetHints(object, x, y, min.width, min.height, max.width, 
    max.height, flags)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkWindow}}}
\item{\verb{x}}{ignored field, does not matter}
\item{\verb{y}}{ignored field, does not matter}
\item{\verb{min.width}}{minimum width hint}
\item{\verb{min.height}}{minimum height hint}
\item{\verb{max.width}}{max width hint}
\item{\verb{max.height}}{max height hint}
\item{\verb{flags}}{logical OR of GDK_HINT_POS, GDK_HINT_MIN_SIZE, and/or GDK_HINT_MAX_SIZE}
}
\details{If using GDK directly, use \code{\link{gdkWindowSetGeometryHints}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
