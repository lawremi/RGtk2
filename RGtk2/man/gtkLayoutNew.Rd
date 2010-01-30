\alias{gtkLayoutNew}
\name{gtkLayoutNew}
\title{gtkLayoutNew}
\description{Creates a new \verb{\link{GtkLayout}}. Unless you have a specific adjustment
you'd like the layout to use for scrolling, pass \code{NULL} for
\code{hadjustment} and \code{vadjustment}.}
\usage{gtkLayoutNew(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
\arguments{
\item{\verb{hadjustment}}{[\verb{\link{GtkAdjustment}}]  horizontal scroll adjustment, or \code{NULL}}
\item{\verb{vadjustment}}{[\verb{\link{GtkAdjustment}}]  vertical scroll adjustment, or \code{NULL}}
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkLayout}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
