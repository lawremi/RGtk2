\alias{gdkScreenGetMonitorGeometry}
\name{gdkScreenGetMonitorGeometry}
\title{gdkScreenGetMonitorGeometry}
\description{Retrieves the \code{\link{GdkRectangle}} representing the size and position of 
the individual monitor within the entire screen area.}
\usage{gdkScreenGetMonitorGeometry(object, monitor.num)}
\arguments{
\item{\code{object}}{[\code{\link{GdkScreen}}]  a \code{\link{GdkScreen}}.}
\item{\code{monitor.num}}{[integer]  the monitor number. }
}
\details{Note that the size of the entire screen area can be retrieved via 
\code{\link{gdkScreenGetWidth}} and \code{\link{gdkScreenGetHeight}}.  

  Since  2.2}
\value{
A list containing the following elements:
\item{\code{dest}}{[\code{\link{GdkRectangle}}]  a \code{\link{GdkRectangle}} to be filled with the monitor geometry}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
