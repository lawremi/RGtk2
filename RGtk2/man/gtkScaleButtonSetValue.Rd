\alias{gtkScaleButtonSetValue}
\name{gtkScaleButtonSetValue}
\title{gtkScaleButtonSetValue}
\description{Sets the current value of the scale; if the value is outside
the minimum or maximum range values, it will be clamped to fit
inside them. The scale button emits the \verb{"value-changed"}
signal if the value changes.}
\usage{gtkScaleButtonSetValue(object, value)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkScaleButton}}}
\item{\verb{value}}{new value of the scale button}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
