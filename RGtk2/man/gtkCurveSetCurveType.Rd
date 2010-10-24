\alias{gtkCurveSetCurveType}
\name{gtkCurveSetCurveType}
\title{gtkCurveSetCurveType}
\description{
Sets the type of the curve. The curve will remain unchanged except when
changing from a free curve to a linear or spline curve, in which case the
curve will be changed as little as possible.
\strong{WARNING: \code{gtk_curve_set_curve_type} has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.}
}
\usage{gtkCurveSetCurveType(object, type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCurve}}.}
\item{\verb{type}}{the type of the curve.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
