\alias{gdkDeviceSetMode}
\name{gdkDeviceSetMode}
\title{gdkDeviceSetMode}
\description{Sets a the mode of an input device. The mode controls if the
device is active and whether the device's range is mapped to the
entire screen or to a single window.}
\usage{gdkDeviceSetMode(object, mode)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDevice}}.}
\item{\verb{mode}}{the input mode.}
}
\value{[logical] \code{TRUE} if the mode was successfully changed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
