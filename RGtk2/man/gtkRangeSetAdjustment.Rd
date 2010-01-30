\alias{gtkRangeSetAdjustment}
\name{gtkRangeSetAdjustment}
\title{gtkRangeSetAdjustment}
\description{Sets the adjustment to be used as the "model" object for this range
widget. The adjustment indicates the current range value, the
minimum and maximum range values, the step/page increments used
for keybindings and scrolling, and the page size. The page size
is normally 0 for \verb{\link{GtkScale}} and nonzero for \verb{\link{GtkScrollbar}}, and
indicates the size of the visible area of the widget being scrolled.
The page size affects the size of the scrollbar slider.}
\usage{gtkRangeSetAdjustment(object, adjustment)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkRange}}]  a \verb{\link{GtkRange}}}
\item{\verb{adjustment}}{[\verb{\link{GtkAdjustment}}]  a \verb{\link{GtkAdjustment}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
