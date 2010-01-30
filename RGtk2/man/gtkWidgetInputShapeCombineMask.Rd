\alias{gtkWidgetInputShapeCombineMask}
\name{gtkWidgetInputShapeCombineMask}
\title{gtkWidgetInputShapeCombineMask}
\description{Sets an input shape for this widget's GDK window. This allows for
windows which react to mouse click in a nonrectangular region, see 
\code{\link{gdkWindowInputShapeCombineMask}} for more information.}
\usage{gtkWidgetInputShapeCombineMask(object, shape.mask = NULL, offset.x, offset.y)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{shape.mask}}{[\verb{\link{GdkBitmap}}]  shape to be added, or \code{NULL} to remove an existing shape}
\item{\verb{offset.x}}{[integer]  X position of shape mask with respect to \code{window}}
\item{\verb{offset.y}}{[integer]  Y position of shape mask with respect to \code{window}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
