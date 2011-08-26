\alias{gdkScreenGetMonitorWidthMm}
\name{gdkScreenGetMonitorWidthMm}
\title{gdkScreenGetMonitorWidthMm}
\description{Gets the width in millimeters of the specified monitor, if available.}
\usage{gdkScreenGetMonitorWidthMm(object, monitor.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkScreen}}}
\item{\verb{monitor.num}}{number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)}
}
\details{Since 2.14}
\value{[integer] the width of the monitor, or -1 if not available}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
