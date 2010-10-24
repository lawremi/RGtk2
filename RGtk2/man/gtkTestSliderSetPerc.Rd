\alias{gtkTestSliderSetPerc}
\name{gtkTestSliderSetPerc}
\title{gtkTestSliderSetPerc}
\description{This function will adjust the slider position of all GtkRange
based widgets, such as scrollbars or scales, it'll also adjust
spin buttons. The adjustment value of these widgets is set to
a value between the lower and upper limits, according to the
\code{percentage} argument.}
\usage{gtkTestSliderSetPerc(widget, percentage)}
\arguments{
\item{\verb{widget}}{valid widget pointer.}
\item{\verb{percentage}}{value between 0 and 100.}
}
\details{Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
