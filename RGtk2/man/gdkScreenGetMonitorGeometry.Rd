\alias{gdkScreenGetMonitorGeometry}
\name{gdkScreenGetMonitorGeometry}
\title{gdkScreenGetMonitorGeometry}
\description{Retrieves the \verb{\link{GdkRectangle}} representing the size and position of 
the individual monitor within the entire screen area.}
\usage{gdkScreenGetMonitorGeometry(object, monitor.num)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkScreen}}]  a \verb{\link{GdkScreen}}.}
\item{\verb{monitor.num}}{[integer]  the monitor number. }
}
\details{Note that the size of the entire screen area can be retrieved via 
\code{\link{gdkScreenGetWidth}} and \code{\link{gdkScreenGetHeight}}.  

  Since  2.2}
\value{
A list containing the following elements:
\item{\verb{dest}}{[\verb{\link{GdkRectangle}}]  a \verb{\link{GdkRectangle}} to be filled with the monitor geometry}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
