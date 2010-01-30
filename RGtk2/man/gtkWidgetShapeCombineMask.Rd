\alias{gtkWidgetShapeCombineMask}
\name{gtkWidgetShapeCombineMask}
\title{gtkWidgetShapeCombineMask}
\description{Sets a shape for this widget's GDK window. This allows for
transparent windows etc., see \code{\link{gdkWindowShapeCombineMask}}
for more information.}
\usage{gtkWidgetShapeCombineMask(object, shape.mask, offset.x, offset.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{shape.mask}}{[\verb{\link{GdkBitmap}}]  shape to be added, or \code{NULL} to remove an existing shape}
\item{\verb{offset.x}}{[integer]  X position of shape mask with respect to \code{window}}
\item{\verb{offset.y}}{[integer]  Y position of shape mask with respect to \code{window}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
