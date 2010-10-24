\alias{gdkEventGetCoords}
\name{gdkEventGetCoords}
\title{gdkEventGetCoords}
\description{Extract the event window relative x/y coordinates from an event.}
\usage{gdkEventGetCoords(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkEvent}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the event delivered event window coordinates}
\item{\verb{x.win}}{location to put event window x coordinate}
\item{\verb{y.win}}{location to put event window y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
