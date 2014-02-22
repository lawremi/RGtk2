\alias{gtkSpinButtonNew}
\name{gtkSpinButtonNew}
\title{gtkSpinButtonNew}
\description{Creates a new \code{\link{GtkSpinButton}}.}
\usage{gtkSpinButtonNew(adjustment = NULL, climb.rate = NULL, digits = NULL, 
    show = TRUE)}
\arguments{
\item{\verb{adjustment}}{the \code{\link{GtkAdjustment}} object that this spin button should use.}
\item{\verb{climb.rate}}{specifies how much the spin button changes when an arrow is clicked on.}
\item{\verb{digits}}{the number of decimal places to display.}
}
\value{[\code{\link{GtkWidget}}] The new spin button as a \code{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
