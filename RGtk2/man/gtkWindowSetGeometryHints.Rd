\alias{gtkWindowSetGeometryHints}
\name{gtkWindowSetGeometryHints}
\title{gtkWindowSetGeometryHints}
\description{This function sets up hints about how a window can be resized by
the user.  You can set a minimum and maximum size; allowed resize
increments (e.g. for xterm, you can only resize by the size of a
character); aspect ratios; and more. See the \code{\link{GdkGeometry}} struct.}
\usage{gtkWindowSetGeometryHints(object, geometry.widget, geometry)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWindow}}]  a \code{\link{GtkWindow}}}
\item{\code{geometry.widget}}{[\code{\link{GtkWidget}}]  widget the geometry hints will be applied to}
\item{\code{geometry}}{[\code{\link{GdkGeometry}}]  struct containing geometry information}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
