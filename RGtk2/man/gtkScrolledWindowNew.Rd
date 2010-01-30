\alias{gtkScrolledWindowNew}
\name{gtkScrolledWindowNew}
\title{gtkScrolledWindowNew}
\description{Creates a new scrolled window. The two arguments are the scrolled
window's adjustments; these will be shared with the scrollbars and the
child widget to keep the bars in sync with the child. Usually you want
to pass \code{NULL} for the adjustments, which will cause the scrolled window
to create them for you.}
\usage{gtkScrolledWindowNew(hadjustment = NULL, vadjustment = NULL, show = TRUE)}
\arguments{
\item{\verb{hadjustment}}{[\verb{\link{GtkAdjustment}}] Horizontal adjustment.}
\item{\verb{vadjustment}}{[\verb{\link{GtkAdjustment}}] Vertical adjustment.}
}
\value{[\verb{\link{GtkWidget}}] New scrolled window.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
