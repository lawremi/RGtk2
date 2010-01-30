\alias{gdkEventGetRootCoords}
\name{gdkEventGetRootCoords}
\title{gdkEventGetRootCoords}
\description{Extract the root window relative x/y coordinates from an event.}
\usage{gdkEventGetRootCoords(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkEvent}}]  a \verb{\link{GdkEvent}}}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the event delivered root window coordinates}
\item{\verb{x.root}}{[numeric]  location to put root window x coordinate}
\item{\verb{y.root}}{[numeric]  location to put root window y coordinate}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
