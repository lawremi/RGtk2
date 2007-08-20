\alias{gtkWidgetInputShapeCombineMask}
\name{gtkWidgetInputShapeCombineMask}
\title{gtkWidgetInputShapeCombineMask}
\description{Sets an input shape for this widget's GDK window. This allows for
windows which react to mouse click in a nonrectangular region, see 
\code{\link{gdkWindowInputShapeCombineMask}} for more information.}
\usage{gtkWidgetInputShapeCombineMask(object, shape.mask = NULL, offset.x, offset.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{shape.mask}}{[\code{\link{GdkBitmap}}]  shape to be added, or \code{NULL} to remove an existing shape}
\item{\code{offset.x}}{[integer]  X position of shape mask with respect to \code{window}}
\item{\code{offset.y}}{[integer]  Y position of shape mask with respect to \code{window}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
