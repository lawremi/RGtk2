\alias{gtkAdjustmentConfigure}
\name{gtkAdjustmentConfigure}
\title{gtkAdjustmentConfigure}
\description{Sets all properties of the adjustment at once.}
\usage{gtkAdjustmentConfigure(object, value, lower, upper, step.increment, 
    page.increment, page.size)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAdjustment}}}
\item{\verb{value}}{the new value}
\item{\verb{lower}}{the new minimum value}
\item{\verb{upper}}{the new maximum value}
\item{\verb{step.increment}}{the new step increment}
\item{\verb{page.increment}}{the new page increment}
\item{\verb{page.size}}{the new page size}
}
\details{Use this function to avoid multiple emissions of the "changed"
signal. See \code{\link{gtkAdjustmentSetLower}} for an alternative way
of compressing multiple emissions of "changed" into one.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
