\alias{gtkSpinButtonConfigure}
\name{gtkSpinButtonConfigure}
\title{gtkSpinButtonConfigure}
\description{Changes the properties of an existing spin button. The adjustment, climb rate, and number of decimal places are all changed accordingly, after this function call.}
\usage{gtkSpinButtonConfigure(object, adjustment = NULL, climb.rate, digits)}
\arguments{
\item{\code{object}}{[\code{\link{GtkSpinButton}}] a \code{\link{GtkSpinButton}}.}
\item{\code{adjustment}}{[\code{\link{GtkAdjustment}}] a \code{\link{GtkAdjustment}}.}
\item{\code{climb.rate}}{[numeric] the new climb rate.}
\item{\code{digits}}{[numeric] the number of decimal places to display in the spin button.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
