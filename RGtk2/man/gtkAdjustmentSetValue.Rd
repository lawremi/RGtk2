\alias{gtkAdjustmentSetValue}
\name{gtkAdjustmentSetValue}
\title{gtkAdjustmentSetValue}
\description{Sets the \verb{\link{GtkAdjustment}} value. The value is clamped to lie between
\code{adjustment->lower} and
\code{adjustment->upper}.}
\usage{gtkAdjustmentSetValue(object, value)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkAdjustment}}] a \verb{\link{GtkAdjustment}}.}
\item{\verb{value}}{[numeric] the new value.}
}
\details{Note that for adjustments which are used in a \verb{\link{GtkScrollbar}}, the effective
range of allowed values goes from \code{adjustment->lower} to
\code{adjustment->upper - adjustment->page_size}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
