\alias{gdkEventGetRootCoords}
\name{gdkEventGetRootCoords}
\title{gdkEventGetRootCoords}
\description{Extract the root window relative x/y coordinates from an event.}
\usage{gdkEventGetRootCoords(object)}
\arguments{\item{\code{object}}{[\code{\link{GdkEvent}}]  a \code{\link{GdkEvent}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the event delivered root window coordinates}
\item{\code{x.root}}{[numeric]  location to put root window x coordinate}
\item{\code{y.root}}{[numeric]  location to put root window y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
