\alias{gtkTestSliderGetValue}
\name{gtkTestSliderGetValue}
\title{gtkTestSliderGetValue}
\description{Retrive the literal adjustment value for GtkRange based
widgets and spin buttons. Note that the value returned by
this function is anything between the lower and upper bounds
of the adjustment belonging to \code{widget}, and is not a percentage
as passed in to \code{\link{gtkTestSliderSetPerc}}.}
\usage{gtkTestSliderGetValue(widget)}
\arguments{\item{\verb{widget}}{valid widget pointer.}}
\details{Since 2.14}
\value{[numeric] adjustment->value for an adjustment belonging to \code{widget}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
