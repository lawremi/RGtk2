\alias{gdkScreenGetPrimaryMonitor}
\name{gdkScreenGetPrimaryMonitor}
\title{gdkScreenGetPrimaryMonitor}
\description{Gets the primary monitor for \code{screen}.  The primary monitor
is considered the monitor where the 'main desktop' lives.
While normal application windows typically allow the window
manager to place the windows, specialized desktop applications
such as panels should place themselves on the primary monitor.}
\usage{gdkScreenGetPrimaryMonitor(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}.}}
\details{If no primary monitor is configured by the user, the return value
will be 0, defaulting to the first monitor.
  Since 2.20}
\value{[integer] An integer index for the primary monitor, or 0 if none is configured.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
