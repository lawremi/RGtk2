\alias{gtkScaleButtonSetValue}
\name{gtkScaleButtonSetValue}
\title{gtkScaleButtonSetValue}
\description{Sets the current value of the scale; if the value is outside 
the minimum or maximum range values, it will be clamped to fit 
inside them. The scale button emits the \code{"value-changed"} 
signal if the value changes.}
\usage{gtkScaleButtonSetValue(object, value)}
\arguments{
\item{\code{object}}{[\code{\link{GtkScaleButton}}]  a \code{\link{GtkScaleButton}}}
\item{\code{value}}{[numeric]  new value of the scale button}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
