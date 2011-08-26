\alias{gdkScreenGetMonitorHeightMm}
\name{gdkScreenGetMonitorHeightMm}
\title{gdkScreenGetMonitorHeightMm}
\description{Gets the height in millimeters of the specified monitor.}
\usage{gdkScreenGetMonitorHeightMm(object, monitor.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkScreen}}}
\item{\verb{monitor.num}}{number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)}
}
\details{Since 2.14}
\value{[integer] the height of the monitor, or -1 if not available}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
