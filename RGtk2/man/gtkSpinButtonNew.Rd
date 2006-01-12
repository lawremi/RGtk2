\alias{gtkSpinButtonNew}
\name{gtkSpinButtonNew}
\title{gtkSpinButtonNew}
\description{Creates a new \code{\link{GtkSpinButton}}.}
\usage{gtkSpinButtonNew(adjustment = NULL, climb.rate = NULL, digits = NULL, show = TRUE)}
\arguments{
\item{\code{adjustment}}{[\code{\link{GtkAdjustment}}] the \code{\link{GtkAdjustment}} object that this spin button should use.}
\item{\code{climb.rate}}{[numeric] specifies how much the spin button changes when an arrow is clicked on.}
\item{\code{digits}}{[numeric] the number of decimal places to display.}
}
\value{[\code{\link{GtkWidget}}] The new spin button as a \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
