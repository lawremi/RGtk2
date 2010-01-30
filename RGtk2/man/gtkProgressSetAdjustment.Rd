\alias{gtkProgressSetAdjustment}
\name{gtkProgressSetAdjustment}
\title{gtkProgressSetAdjustment}
\description{
Associates a \verb{\link{GtkAdjustment}} with the \verb{\link{GtkProgress}}.  A \verb{\link{GtkAdjustment}}
is used to represent the upper and lower bounds and the step interval
of the underlying value for which progress is shown.
\strong{WARNING: \code{gtk_progress_set_adjustment} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressSetAdjustment(object, adjustment)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkProgress}}] a \verb{\link{GtkProgress}}.}
\item{\verb{adjustment}}{[\verb{\link{GtkAdjustment}}] the \verb{\link{GtkAdjustment}} to be associated with the \verb{\link{GtkProgress}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
