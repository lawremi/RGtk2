\alias{gtkSpinButtonNewWithRange}
\name{gtkSpinButtonNewWithRange}
\title{gtkSpinButtonNewWithRange}
\description{This is a convenience constructor that allows creation of a numeric 
\verb{\link{GtkSpinButton}} without manually creating an adjustment. The value is 
initially set to the minimum value and a page increment of 10 * \code{step}
is the default. The precision of the spin button is equivalent to the 
precision of \code{step}. }
\usage{gtkSpinButtonNewWithRange(min, max, step, show = TRUE)}
\arguments{
\item{\verb{min}}{[numeric]  Minimum allowable value}
\item{\verb{max}}{[numeric]  Maximum allowable value}
\item{\verb{step}}{[numeric]  Increment added or subtracted by spinning the widget}
}
\details{Note that the way in which the precision is derived works best if \code{step} 
is a power of ten. If the resulting precision is not suitable for your 
needs, use \code{\link{gtkSpinButtonSetDigits}} to correct it.  }
\value{[\verb{\link{GtkWidget}}]  The new spin button as a \verb{\link{GtkWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
