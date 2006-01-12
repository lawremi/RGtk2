\alias{gtkWidgetGetPointer}
\name{gtkWidgetGetPointer}
\title{gtkWidgetGetPointer}
\description{Obtains the location of the mouse pointer in widget coordinates.
Widget coordinates are a bit odd; for historical reasons, they are
defined as \code{widget->window} coordinates for widgets that are not
\code{GTK_NO_WINDOW} widgets, and are relative to \code{widget->allocation.x},
\code{widget->allocation.y} for widgets that are \code{GTK_NO_WINDOW} widgets.}
\usage{gtkWidgetGetPointer(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\value{
A list containing the following elements:
\item{\code{x}}{[integer]  return location for the X coordinate, or \code{NULL}}
\item{\code{y}}{[integer]  return location for the Y coordinate, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
