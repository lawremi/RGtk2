\alias{gdkEventGetCoords}
\name{gdkEventGetCoords}
\title{gdkEventGetCoords}
\description{Extract the event window relative x/y coordinates from an event.}
\usage{gdkEventGetCoords(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkEvent}}]  a \code{\link{GdkEvent}}}}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the event delivered event window coordinates}
\item{\code{x.win}}{[numeric]  location to put event window x coordinate}
\item{\code{y.win}}{[numeric]  location to put event window y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
