\alias{gdkScreenGetMonitorAtWindow}
\name{gdkScreenGetMonitorAtWindow}
\title{gdkScreenGetMonitorAtWindow}
\description{Returns the number of the monitor in which the largest area of the 
bounding rectangle of \code{window} resides.}
\usage{gdkScreenGetMonitorAtWindow(object, window)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkScreen}}.}
\item{\verb{window}}{a \code{\link{GdkWindow}}}
}
\details{Since 2.2}
\value{[integer] the monitor number in which most of \code{window} is located,
or if \code{window} does not intersect any monitors, a monitor,
close to \code{window}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
