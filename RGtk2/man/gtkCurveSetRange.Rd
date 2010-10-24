\alias{gtkCurveSetRange}
\name{gtkCurveSetRange}
\title{gtkCurveSetRange}
\description{
Sets the minimum and maximum x and y values of the curve.
The curve is also reset with a call to \code{\link{gtkCurveReset}}.
\strong{WARNING: \code{gtk_curve_set_range} has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.}
}
\usage{gtkCurveSetRange(object, min.x, max.x, min.y, max.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCurve}}.}
\item{\verb{min.x}}{the minimum x value.}
\item{\verb{max.x}}{the maximum x value.}
\item{\verb{min.y}}{the minimum y value.}
\item{\verb{max.y}}{the maximum y value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
