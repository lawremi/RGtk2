\alias{gtkHScaleNewWithRange}
\name{gtkHScaleNewWithRange}
\title{gtkHScaleNewWithRange}
\description{Creates a new horizontal scale widget that lets the user input a
number between \code{min} and \code{max} (including \code{min} and \code{max}) with the
increment \code{step}.  \code{step} must be nonzero; it's the distance the
slider moves when using the arrow keys to adjust the scale value.}
\usage{gtkHScaleNewWithRange(min, max, step, show = TRUE)}
\arguments{
\item{\verb{min}}{minimum value}
\item{\verb{max}}{maximum value}
\item{\verb{step}}{step increment (tick size) used with keyboard shortcuts}
}
\details{Note that the way in which the precision is derived works best if \code{step}
is a power of ten. If the resulting precision is not suitable for your
needs, use \code{\link{gtkScaleSetDigits}} to correct it.}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkHScale}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
