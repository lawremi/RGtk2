\alias{gdkScreenGetMonitorPlugName}
\name{gdkScreenGetMonitorPlugName}
\title{gdkScreenGetMonitorPlugName}
\description{Returns the output name of the specified monitor.
Usually something like VGA, DVI, or TV, not the actual
product name of the display device.}
\usage{gdkScreenGetMonitorPlugName(object, monitor.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkScreen}}}
\item{\verb{monitor.num}}{number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)}
}
\details{Since 2.14}
\value{[character] a newly-allocated string containing the name of the monitor,
or \code{NULL} if the name cannot be determined}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
