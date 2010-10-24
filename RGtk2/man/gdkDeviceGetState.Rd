\alias{gdkDeviceGetState}
\name{gdkDeviceGetState}
\title{gdkDeviceGetState}
\description{Gets the current state of a device.}
\usage{gdkDeviceGetState(object, window)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDevice}}.}
\item{\verb{window}}{a \code{\link{GdkWindow}}.}
}
\value{
A list containing the following elements:
\item{\verb{axes}}{a list of doubles to store the values of the axes of \code{device} in,
or \code{NULL}.}
\item{\verb{mask}}{location to store the modifiers, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
