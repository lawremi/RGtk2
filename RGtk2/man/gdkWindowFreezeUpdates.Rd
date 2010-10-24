\alias{gdkWindowFreezeUpdates}
\name{gdkWindowFreezeUpdates}
\title{gdkWindowFreezeUpdates}
\description{Temporarily freezes a window such that it won't receive expose
events.  The window will begin receiving expose events again when
\code{\link{gdkWindowThawUpdates}} is called. If \code{\link{gdkWindowFreezeUpdates}}
has been called more than once, \code{\link{gdkWindowThawUpdates}} must be called
an equal number of times to begin processing exposes.}
\usage{gdkWindowFreezeUpdates(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkWindow}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
