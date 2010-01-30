\alias{gtkWindowSetGeometryHints}
\name{gtkWindowSetGeometryHints}
\title{gtkWindowSetGeometryHints}
\description{This function sets up hints about how a window can be resized by
the user.  You can set a minimum and maximum size; allowed resize
increments (e.g. for xterm, you can only resize by the size of a
character); aspect ratios; and more. See the \verb{\link{GdkGeometry}} struct.}
\usage{gtkWindowSetGeometryHints(object, geometry.widget, geometry)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}
\item{\verb{geometry.widget}}{[\verb{\link{GtkWidget}}]  widget the geometry hints will be applied to}
\item{\verb{geometry}}{[\verb{\link{GdkGeometry}}]  struct containing geometry information}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
