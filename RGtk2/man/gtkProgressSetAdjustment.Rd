\alias{gtkProgressSetAdjustment}
\name{gtkProgressSetAdjustment}
\title{gtkProgressSetAdjustment}
\description{
Associates a \code{\link{GtkAdjustment}} with the \code{\link{GtkProgress}}.  A \code{\link{GtkAdjustment}}
is used to represent the upper and lower bounds and the step interval
of the underlying value for which progress is shown.
\strong{WARNING: \code{gtk_progress_set_adjustment} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressSetAdjustment(object, adjustment)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkProgress}}.}
\item{\verb{adjustment}}{the \code{\link{GtkAdjustment}} to be associated with the \code{\link{GtkProgress}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
