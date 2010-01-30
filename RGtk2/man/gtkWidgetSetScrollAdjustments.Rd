\alias{gtkWidgetSetScrollAdjustments}
\name{gtkWidgetSetScrollAdjustments}
\title{gtkWidgetSetScrollAdjustments}
\description{For widgets that support scrolling, sets the scroll adjustments and
returns \code{TRUE}.  For widgets that don't support scrolling, does
nothing and returns \code{FALSE}. Widgets that don't support scrolling
can be scrolled by placing them in a \verb{\link{GtkViewport}}, which does
support scrolling.}
\usage{gtkWidgetSetScrollAdjustments(object, hadjustment = NULL, vadjustment = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{hadjustment}}{[\verb{\link{GtkAdjustment}}]  an adjustment for horizontal scrolling, or \code{NULL}}
\item{\verb{vadjustment}}{[\verb{\link{GtkAdjustment}}]  an adjustment for vertical scrolling, or \code{NULL}}
}
\value{[logical] \code{TRUE} if the widget supports scrolling}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
