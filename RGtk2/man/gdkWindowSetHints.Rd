\alias{gdkWindowSetHints}
\name{gdkWindowSetHints}
\title{gdkWindowSetHints}
\description{
This function is broken and useless and you should ignore it.
If using GTK+, use functions such as \code{\link{gtkWindowResize}}, \code{gtk\Window\Set\Size\Request()},
\code{\link{gtkWindowMove}}, \code{gtk\Window\Parse\Geometry()}, and \code{\link{gtkWindowSetGeometryHints}},
depending on what you're trying to do.
\strong{WARNING: \code{gdk_window_set_hints} is deprecated and should not be used in newly-written code.}
}
\usage{gdkWindowSetHints(object, x, y, min.width, min.height, max.width, max.height, flags)}
\arguments{
\item{\code{object}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}}
\item{\code{x}}{[integer]  ignored field, does not matter}
\item{\code{y}}{[integer]  ignored field, does not matter}
\item{\code{min.width}}{[integer]  minimum width hint}
\item{\code{min.height}}{[integer]  minimum height hint}
\item{\code{max.width}}{[integer]  max width hint}
\item{\code{max.height}}{[integer]  max height hint}
\item{\code{flags}}{[integer]  logical OR of GDK\_HINT\_POS, GDK\_HINT\_MIN\_SIZE, and/or GDK\_HINT\_MAX\_SIZE}
}
\details{If using GDK directly, use \code{\link{gdkWindowSetGeometryHints}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
