\alias{gtkProgressSetValue}
\name{gtkProgressSetValue}
\title{gtkProgressSetValue}
\description{
Sets the value within the \code{\link{GtkProgress}} to an absolute value.
The value must be within the valid range of values for the
underlying \code{\link{GtkAdjustment}}.
\strong{WARNING: \code{gtk_progress_set_value} is deprecated and should not be used in newly-written code.}
}
\usage{gtkProgressSetValue(object, value)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkProgress}}.}
\item{\verb{value}}{the value indicating the current completed amount.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
