\alias{gdkDeviceGetHistory}
\name{gdkDeviceGetHistory}
\title{gdkDeviceGetHistory}
\description{Obtains the motion history for a device; given a starting and
ending timestamp, return all events in the motion history for
the device in the given range of time. Some windowing systems
do not support motion history, in which case, \code{FALSE} will
be returned. (This is not distinguishable from the case where
motion history is supported and no events were found.)}
\usage{gdkDeviceGetHistory(object, window, start, stop)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDevice}}]  a \code{\link{GdkDevice}}}
\item{\code{window}}{[\code{\link{GdkWindow}}]  the window with respect to which which the event coordinates will be reported}
\item{\code{start}}{[numeric]  starting timestamp for range of events to return}
\item{\code{stop}}{[numeric]  ending timestamp for the range of events to return}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the windowing system supports motion history and
 at least one event was found.}
\item{\code{events}}{[\code{\link{GdkTimeCoord}}]  location to store a newly-allocated list of \code{\link{GdkTimeCoord}}, or \code{NULL}}
\item{\code{n.events}}{[integer]  location to store the length of \code{events}, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
