\alias{gdkScreenGetMonitorGeometry}
\name{gdkScreenGetMonitorGeometry}
\title{gdkScreenGetMonitorGeometry}
\description{Retrieves the \code{\link{GdkRectangle}} representing the size and position of
the individual monitor within the entire screen area.}
\usage{gdkScreenGetMonitorGeometry(object, monitor.num)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkScreen}}}
\item{\verb{monitor.num}}{the monitor number, between 0 and gdk_screen_get_n_monitors (screen)}
}
\details{Note that the size of the entire screen area can be retrieved via
\code{\link{gdkScreenGetWidth}} and \code{\link{gdkScreenGetHeight}}.
  Since 2.2}
\value{
A list containing the following elements:
\item{\verb{dest}}{a \code{\link{GdkRectangle}} to be filled with the monitor geometry}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
