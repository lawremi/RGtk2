\alias{gtkSpinButtonConfigure}
\name{gtkSpinButtonConfigure}
\title{gtkSpinButtonConfigure}
\description{Changes the properties of an existing spin button. The adjustment, climb rate, and number of decimal places are all changed accordingly, after this function call.}
\usage{gtkSpinButtonConfigure(object, adjustment = NULL, climb.rate, digits)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSpinButton}}] a \verb{\link{GtkSpinButton}}.}
\item{\verb{adjustment}}{[\verb{\link{GtkAdjustment}}] a \verb{\link{GtkAdjustment}}.}
\item{\verb{climb.rate}}{[numeric] the new climb rate.}
\item{\verb{digits}}{[numeric] the number of decimal places to display in the spin button.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
