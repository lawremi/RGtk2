\alias{gdkDeviceGetState}
\name{gdkDeviceGetState}
\title{gdkDeviceGetState}
\description{Gets the current state of a device.}
\usage{gdkDeviceGetState(object, window)}
\arguments{
\item{\code{object}}{[\code{\link{GdkDevice}}] a \code{\link{GdkDevice}}.}
\item{\code{window}}{[\code{\link{GdkWindow}}] a \code{\link{GdkWindow}}.}
}
\value{
A list containing the following elements:
\item{\code{axes}}{[numeric] a list of doubles to store the values of the axes of \code{device} in, 
  or \code{NULL}.}
\item{\code{mask}}{[\code{\link{GdkModifierType}}] location to store the modifiers, or \code{NULL}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
