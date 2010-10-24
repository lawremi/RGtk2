\alias{gdkDeviceGetAxis}
\name{gdkDeviceGetAxis}
\title{gdkDeviceGetAxis}
\description{Interprets a list of double as axis values for a given device,
and locates the value in the list for a given axis use.}
\usage{gdkDeviceGetAxis(object, axes, use)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDevice}}}
\item{\verb{axes}}{pointer to a list of axes}
\item{\verb{use}}{the use to look for}
}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the given axis use was found, otherwise \code{FALSE}}
\item{\verb{value}}{location to store the found value.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
