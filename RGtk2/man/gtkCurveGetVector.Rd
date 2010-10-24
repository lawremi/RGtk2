\alias{gtkCurveGetVector}
\name{gtkCurveGetVector}
\title{gtkCurveGetVector}
\description{
Returns a vector of points representing the curve.
\strong{WARNING: \code{gtk_curve_get_vector} has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.}
}
\usage{gtkCurveGetVector(object, veclen)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCurve}}.}
\item{\verb{veclen}}{the number of points to calculate.}
}
\value{
A list containing the following elements:
\item{\verb{vector}}{returns the points.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
