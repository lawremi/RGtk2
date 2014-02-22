\alias{gtkWidgetInputShapeCombineMask}
\name{gtkWidgetInputShapeCombineMask}
\title{gtkWidgetInputShapeCombineMask}
\description{Sets an input shape for this widget's GDK window. This allows for
windows which react to mouse click in a nonrectangular region, see 
\code{\link{gdkWindowInputShapeCombineMask}} for more information.}
\usage{gtkWidgetInputShapeCombineMask(object, shape.mask = NULL, offset.x, 
    offset.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{shape.mask}}{shape to be added, or \code{NULL} to remove an existing shape. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{offset.x}}{X position of shape mask with respect to \code{window}}
\item{\verb{offset.y}}{Y position of shape mask with respect to \code{window}}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
