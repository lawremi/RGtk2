\alias{gtkSpinButtonConfigure}
\name{gtkSpinButtonConfigure}
\title{gtkSpinButtonConfigure}
\description{Changes the properties of an existing spin button. The adjustment, climb rate,
and number of decimal places are all changed accordingly, after this function call.}
\usage{gtkSpinButtonConfigure(object, adjustment = NULL, climb.rate, 
    digits)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkSpinButton}}}
\item{\verb{adjustment}}{a \code{\link{GtkAdjustment}}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{climb.rate}}{the new climb rate.}
\item{\verb{digits}}{the number of decimal places to display in the spin button.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
