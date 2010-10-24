\alias{gtkCurveSetGamma}
\name{gtkCurveSetGamma}
\title{gtkCurveSetGamma}
\description{
Recomputes the entire curve using the given gamma value.
A gamma value of 1 results in a straight line. Values greater than 1 result
in a curve above the straight line. Values less than 1 result in a curve
below the straight line. The curve type is changed to \code{GTK_CURVE_TYPE_FREE}.
FIXME: Needs a more precise definition of gamma.
\strong{WARNING: \code{gtk_curve_set_gamma} has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.}
}
\usage{gtkCurveSetGamma(object, gamma)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCurve}}.}
\item{\verb{gamma}}{the gamma value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
